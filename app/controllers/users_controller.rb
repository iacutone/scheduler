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

      @time1 = b["11:00"] 
      @time2 = b["11:20"] 
      @time3 = b["12:40"] 
      @time4 = b["12:00"] 
      @time5 = b["12:20"] 
      @time6 = b["12:40"]
      @time7 = b["1:00"] 
      @time8 = b["1:20"] 
      @time9 = b["1:40"]
      @time10 = b["2:00"] 
      @time11 = b["4:00"] 
      @time12 = b["4:20"]
      @time13 = b["4:40"] 
      @time14 = b["5:00"]
      @time15 = b["5:20"] 
      @time16 = b["5:40"]
      @time17 = b["6:00"] 
      @time18 = b["6:20"] 
      @time19 = b["7:40"]
      @time20 = b["7:00"]

      @time21 = c["11:00"] 
      @time22 = c["11:20"] 
      @time23 = c["11:40"] 
      @time24 = c["12:00"] 
      @time25 = c["12:20"] 
      @time26 = c["12:40"]
      @time27 = c["1:00"] 
      @time28 = c["1:20"] 
      @time29 = c["1:40"]
      @time30 = c["2:00"] 
      @time31 = c["4:00"] 
      @time32 = c["4:20"]
      @time33 = c["4:40"] 
      @time34 = c["5:00"]
      @time35 = c["5:20"] 
      @time36 = c["5:40"]
      @time37 = c["6:00"] 
      @time38 = c["6:20"] 
      @time39 = c["7:40"]
      @time40 = c["7:00"] 

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


