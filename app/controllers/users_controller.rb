class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save

      @counter = []
      @counter = User.pluck(:time)
      # @counteri = @counter.compact.size.to_i
      # @counteri.split

      b = Hash.new(0)

      @counter.each do |v|
        b[v] += 1
      end

      @time1 = b["11:30"] 
      @time2 = b["11:45"] 
      @time3 = b["12:00"] 
      @time4 = b["12:15"] 
      @time5 = b["12:30"] 
      @time6 = b["12:45"]
      @time7 = b["1:00"] 
      @time8 = b["1:15"] 
      @time9 = b["1:30"]
      @time10 = b["1:45"] 
      @time11 = b["5:00"] 
      @time12 = b["5:15"]
      @time13 = b["5:30"] 
      @time14 = b["5:45"]
      @time15 = b["6:00"] 
      @time16 = b["6:15"]
      @time17 = b["6:30"] 
      @time18 = b["6:45"] 
      @time19 = b["7:00"]
      @time20 = b["7:15"] 

      render :time
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    else
      render :time
    end
  end

    # case
    #   when @time1 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time2 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time3 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time4 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time5 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time6 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time7 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time8 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time9 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time10 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time11 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time12 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time13 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time14 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time15 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time16 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time17 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time18 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time19 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   when time20 < 4
    #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    #   else
    #     redirect_to new_user_path, :notice => "Time slot full, pick another time."
    # end

    # if time1 || time2 || time3
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # else
    #   redirect_to new_user_path, :notice => "Time slot full, pick another time."
    # end

    # @counter1 = []
    # @counter1 = User.pluck(:time1)
    # @counter1i = @counter1.compact.size.to_i

    # @counter2 = []
    # @counter2 = User.pluck(:time2)
    # @counter2i = @counter2.compact.size.to_i

    # @counter3 = []
    # @counter2 = User.pluck(:time3)
    # @counter3i = @counter3.compact.size.to_i

    # @counter4 = []
    # @counter4 = User.pluck(:time4)
    # @counter4i = @counter4.compact.size.to_i

    # @counter5 = []
    # @counter5 = User.pluck(:time5)
    # @counter5i = @counter5.compact.size.to_i

    # @counter6 = []
    # @counter6 = User.pluck(:time6)
    # @counter6i = @counter6.compact.size.to_i

    # @counter7 = []
    # @counter7 = User.pluck(:time7)
    # @counter7i = @counter7.compact.size.to_i

    # @counter8 = []
    # @counter8 = User.pluck(:time8)
    # @counter8i = @counter8.compact.size.to_i

    # @counter9 = []
    # @counter9 = User.pluck(:time9)
    # @counter9i = @counter9.compact.size.to_i

    # @counter10 = []
    # @counter10 = User.pluck(:time10)
    # @counter10i = @counter10.compact.size.to_i

    # @counter11 = []
    # @counter11 = User.pluck(:time11)
    # @counter11i = @counter11.compact.size.to_i

    # @counter12 = []
    # @counter12 = User.pluck(:time12)
    # @counter12i = @counter12.compact.size.to_i

    # @counter13 = []
    # @counter13 = User.pluck(:time13)
    # @counter13i = @counter13.compact.size.to_i

    # @counter14 = []
    # @counter14 = User.pluck(:time14)
    # @counter14i = @counter14.compact.size.to_i

    # @counter15 = []
    # @counter15 = User.pluck(:time15)
    # @counter15i = @counter4.compact.size.to_i

    # @counter16 = []
    # @counter16 = User.pluck(:time16)
    # @counter16i = @counter16.compact.size.to_i

    # @counter17 = []
    # @counter17 = User.pluck(:time17)
    # @counter17i = @counter17.compact.size.to_i

    # @counter18 = []
    # @counter18 = User.pluck(:time18)
    # @counter18i = @counter18.compact.size.to_i

    # @counter19 = []
    # @counter19 = User.pluck(:time19)
    # @counter19i = @counter19.compact.size.to_i

    # if @counteri <= 3 
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter1i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter2i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter3i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter4i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter5i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter6i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter7i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter8i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter9i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter10i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter11i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter12i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter13i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter14i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter15i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter16i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter17i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter18i <= 6
    #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # elsif @counter19i <= 6
      # redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    # else
    #   redirect_to new_user_path, :notice => "Time slot full, pick another time."
    # end
  # end

  def time
    @user = User.find(params[:id])
    redirect_to user_path
  end

  def show
    @user = User.all
  end

end

# class UsersController < ApplicationController
#   include UsersHelper
#   # before_filter :validator, :only => [:update]

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(params[:user])

#     if @user.save
#       @time_slot = TimeSlot.new
#       @time_slot.user_id = @user.id
#       @time_slot.save
#       render :day
#     else
#       render :new
#     end
#   end

#   def update
#     @user = User.find(params[:id])
#     if @user.update_attributes(params[:user])
#       render :template => "time_slots/new"
#     else 
#       render :new
#     end
#   end

#     # @counter = []
#     # @counter = User.pluck(:time)
#     # # @counteri = @counter.compact.size.to_i
#     # # @counteri.split

#     # b = Hash.new(0)

#     # @counter.each do |v|
#     #   b[v] += 1
#     # end

#     # time1 = b["11:30"] 
#     # time2 = b["11:45"] 
#     # time3 = b["12:00"] 
#     # time4 = b["12:15"] 
#     # time5 = b["12:30"] 
#     # time6 = b["12:45"]
#     # time7 = b["1:00"] 
#     # time8 = b["1:15"] 
#     # time9 = b["1:30"]
#     # time10 = b["1:45"] 
#     # time11 = b["5:00"] 
#     # time12 = b["5:15"]
#     # time13 = b["5:30"] 
#     # time14 = b["5:45"] 
#     # time16 = b["6:00"]
#     # time17 = b["6:15"] 
#     # time18 = b["6:30"] 
#     # time19 = b["6:45"]
#     # time20 = b["7:00"]

#     # case
#     #   when time1 < 4
#         # redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time2 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time3 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time4 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time5 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time6 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time7 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time8 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time9 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time10 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time11 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time12 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time13 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time14 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time15 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time16 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time17 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time18 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time19 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   when time20 < 4
#     #     redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     #   else
#     #     redirect_to new_user_path, :notice => "Time slot full, pick another time."
#     # end

#     # @counter1 = []
#     # @counter1 = User.pluck(:time1)
#     # @counter1i = @counter1.compact.size.to_i

#     # @counter2 = []
#     # @counter2 = User.pluck(:time2)
#     # @counter2i = @counter2.compact.size.to_i

#     # @counter3 = []
#     # @counter2 = User.pluck(:time3)
#     # @counter3i = @counter3.compact.size.to_i

#     # @counter4 = []
#     # @counter4 = User.pluck(:time4)
#     # @counter4i = @counter4.compact.size.to_i

#     # @counter5 = []
#     # @counter5 = User.pluck(:time5)
#     # @counter5i = @counter5.compact.size.to_i

#     # @counter6 = []
#     # @counter6 = User.pluck(:time6)
#     # @counter6i = @counter6.compact.size.to_i

#     # @counter7 = []
#     # @counter7 = User.pluck(:time7)
#     # @counter7i = @counter7.compact.size.to_i

#     # @counter8 = []
#     # @counter8 = User.pluck(:time8)
#     # @counter8i = @counter8.compact.size.to_i

#     # @counter9 = []
#     # @counter9 = User.pluck(:time9)
#     # @counter9i = @counter9.compact.size.to_i

#     # @counter10 = []
#     # @counter10 = User.pluck(:time10)
#     # @counter10i = @counter10.compact.size.to_i

#     # @counter11 = []
#     # @counter11 = User.pluck(:time11)
#     # @counter11i = @counter11.compact.size.to_i

#     # @counter12 = []
#     # @counter12 = User.pluck(:time12)
#     # @counter12i = @counter12.compact.size.to_i

#     # @counter13 = []
#     # @counter13 = User.pluck(:time13)
#     # @counter13i = @counter13.compact.size.to_i

#     # @counter14 = []
#     # @counter14 = User.pluck(:time14)
#     # @counter14i = @counter14.compact.size.to_i

#     # @counter15 = []
#     # @counter15 = User.pluck(:time15)
#     # @counter15i = @counter4.compact.size.to_i

#     # @counter16 = []
#     # @counter16 = User.pluck(:time16)
#     # @counter16i = @counter16.compact.size.to_i

#     # @counter17 = []
#     # @counter17 = User.pluck(:time17)
#     # @counter17i = @counter17.compact.size.to_i

#     # @counter18 = []
#     # @counter18 = User.pluck(:time18)
#     # @counter18i = @counter18.compact.size.to_i

#     # @counter19 = []
#     # @counter19 = User.pluck(:time19)
#     # @counter19i = @counter19.compact.size.to_i

#     # if @counteri <= 3 
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter1i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter2i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter3i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter4i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter5i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter6i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter7i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter8i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter9i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter10i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter11i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter12i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter13i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter14i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter15i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter16i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter17i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter18i <= 6
#     #   redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # elsif @counter19i <= 6
#       # redirect_to user_path, :notice => "Thanks, meeting scheduled!"
#     # else
#     #   redirect_to new_user_path, :notice => "Time slot full, pick another time."
#     # end
#   # end

#   def time
#     @user = User.find(params[:id])
#     redirect_to user_path
#   end

#   def show
#     @user = User.all
#   end

# end
