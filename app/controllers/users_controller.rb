class UsersController < ApplicationController

	def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      render :time
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])

    @counter = []
    @counter = User.pluck(:time)
    @counteri = @counter.compact.size.to_i


    @counter1 = []
    @counter1 = User.pluck(:time1)
    @counter1i = @counter1.compact.size.to_i

    @counter2 = []
    @counter2 = User.pluck(:time2)
    @counter2i = @counter2.compact.size.to_i

    @counter3 = []
    @counter2 = User.pluck(:time3)
    @counter3i = @counter3.compact.size.to_i

    @counter4 = []
    @counter4 = User.pluck(:time4)
    @counter4i = @counter4.compact.size.to_i

    @counter5 = []
    @counter5 = User.pluck(:time5)
    @counter5i = @counter5.compact.size.to_i

    @counter6 = []
    @counter6 = User.pluck(:time6)
    @counter6i = @counter6.compact.size.to_i

    @counter7 = []
    @counter7 = User.pluck(:time7)
    @counter7i = @counter7.compact.size.to_i

    @counter8 = []
    @counter8 = User.pluck(:time8)
    @counter8i = @counter8.compact.size.to_i

    @counter9 = []
    @counter9 = User.pluck(:time9)
    @counter9i = @counter9.compact.size.to_i

    @counter10 = []
    @counter10 = User.pluck(:time10)
    @counter10i = @counter10.compact.size.to_i

    @counter11 = []
    @counter11 = User.pluck(:time11)
    @counter11i = @counter11.compact.size.to_i

    @counter12 = []
    @counter12 = User.pluck(:time12)
    @counter12i = @counter12.compact.size.to_i

    @counter13 = []
    @counter13 = User.pluck(:time13)
    @counter13i = @counter13.compact.size.to_i

    @counter14 = []
    @counter14 = User.pluck(:time14)
    @counter14i = @counter14.compact.size.to_i

    @counter15 = []
    @counter15 = User.pluck(:time15)
    @counter15i = @counter4.compact.size.to_i

    @counter16 = []
    @counter16 = User.pluck(:time16)
    @counter16i = @counter16.compact.size.to_i

    @counter17 = []
    @counter17 = User.pluck(:time17)
    @counter17i = @counter17.compact.size.to_i

    @counter18 = []
    @counter18 = User.pluck(:time18)
    @counter18i = @counter18.compact.size.to_i

    @counter19 = []
    @counter19 = User.pluck(:time19)
    @counter19i = @counter19.compact.size.to_i

    if @counteri <= 5 
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter1i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter2i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter3i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter4i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter5i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter6i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter7i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter8i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter9i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter10i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter11i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter12i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter13i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter14i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter15i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter16i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter17i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter18i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    elsif @counter19i <= 5
      redirect_to user_path, :notice => "Thanks, meeting scheduled!"
    else
     redirect_to new_user_path, :notice => "Time slot full, pick another time."
    end
  end

  def time
    @user = User.find(params[:id])
    redirect_to user_path
  end

  def show
    @user = User.all
  end

end

 