class UsersController < ApplicationController

	def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      @schedule = Schedule.new
      @schedule.user = @user
      @schedule.save
      # render :template => "schedules/index"
    else
      render :new
    end
  end
end
