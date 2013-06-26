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
      redirect_to user_path, :notice => "Success!"
    else
      render :time
    end
  end

  def time
    @user = User.find(params[:id])
    redirect_to user_path
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @user = User.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = OrderPdf.new(@user)
        pdf.text
        send_data pdf.render, filename: "schedule.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
end


