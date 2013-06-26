class OrderPdf < Prawn::Document
	def initialize(user)
		super()
		@user = user
		table line_item_rows
	end

	# def line_items
	# 	table line_item_rows
	# end

	def line_item_rows
		[["Name", "Phone", "Email", "Day", "Time"]] +
		@user.map do |item|
			[item.name, item.phone, item.email, item.day, item.time1 || item.time2]
		end
	end
end