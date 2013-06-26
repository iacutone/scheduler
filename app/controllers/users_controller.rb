class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save

      @day_one_counter = []
      @day_one_counter = User.pluck(:time1)

      @day_two_counter = []
      @day_two_counter = User.pluck(:time2)
      # @counteri = @counter.compact.size.to_i
      # @counteri.split

      b = Hash.new(0)
      c = Hash.new(0)

      @day_one_counter.each do |v|
        b[v] += 1
      end

      @day_two_counter.each do |v|
        c[v] += 1
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

      @time21 = c["11:30"] 
      @time22 = c["11:45"] 
      @time23 = c["12:00"] 
      @time24 = c["12:15"] 
      @time25 = c["12:30"] 
      @time26 = c["12:45"]
      @time27 = c["1:00"] 
      @time28 = c["1:15"] 
      @time29 = c["1:30"]
      @time30 = c["1:45"] 
      @time31 = c["5:00"] 
      @time32 = c["5:15"]
      @time33 = c["5:30"] 
      @time34 = c["5:45"]
      @time35 = c["6:00"] 
      @time36 = c["6:15"]
      @time37 = c["6:30"] 
      @time38 = c["6:45"] 
      @time39 = c["7:00"]
      @time40 = c["7:15"] 

      render :time
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path
    else
      render :time
    end
  end

  def time
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
    redirect_to user_path
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @user = User.all
      respond_to do |format|
        format.html
        # format.csv { send_data @user.to_csv() }
        format.xls # { send_data @user.to_csv(col_sep: "\t") }
        format.pdf do
        pdf = OrderPdf.new(@user)
        send_data pdf.render, filename: "users.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
end


