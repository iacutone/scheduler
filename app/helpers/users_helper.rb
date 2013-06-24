module UsersHelper

  # @times = ['11:30', '11:45', '12:00', '12:15', '12:30', '12:45', '1:00', '1:15', '1:30', '1:45', '5:00', '5:15', '5:30', '5:45', '6:00', '6:15', '6:30', '6:45', '7:00', '7:15']

  # def add_one_to_counter
  # 	self.counter += 1
  # end

  def count
  	array_count = []
  	counter = User.all  

  	counter.each do |c|
  		array_count << time
  		compacted = array_count.compact.size
  		self.counter = compacted
  	end
  end

  # def filled
  	
  # 	if self.which_time > 5
  # 	else
  # 		# that
  # 	end
  # end
end
