class OrderPdf < Prawn::Document
	def initialize(user)
		@user = user
		super()
		text "@user"
	end
end