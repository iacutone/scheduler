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
      gon.time1 = @time1

      @time2 = b["11:20"] 
      gon.time2 = @time2

      @time3 = b["11:40"]
      gon.time3 = @time3

      @time4 = b["12:00"] 
      gon.time4 = @time4

      @time5 = b["12:20"] 
      gon.time5 = @time5

      @time6 = b["12:40"]
      gon.time6 = @time6

      @time7 = b["1:00"]
      gon.time7 = @time7

      @time8 = b["1:20"]
      gon.time8 = @time8

      @time9 = b["1:40"]
      gon.time9 = @time9

      @time10 = b["2:00"] 
      gon.time10 = @time10

      @time11 = b["4:00"] 
      gon.time11 = @time11

      @time12 = b["4:20"]
      gon.time12 = @time12

      @time13 = b["4:40"] 
      gon.time13 = @time13

      @time14 = b["5:00"]
      gon.time14 = @time14

      @time15 = b["5:20"] 
      gon.time15 = @time15

      @time16 = b["5:40"]
      gon.time16 = @time16

      @time17 = b["6:00"]
      gon.time17 = @time17

      @time18 = b["6:20"] 
      gon.time18 = @time18

      @time19 = b["6:40"]
      gon.time19 = @time19

      @time20 = b["7:00"]
      gon.time20 = @time20

      @time21 = c["11:00"] 
      gon.time21 = @time21

      @time22 = c["11:20"] 
      gon.time22 = @time22

      @time23 = c["11:40"]
      gon.time23 = @time23

      @time24 = c["12:00"] 
      gon.time24 = @time24

      @time25 = c["12:20"]
      gon.time25 = @time25

      @time26 = c["12:40"]
      gon.time26 = @time26

      @time27 = c["1:00"]
      gon.time27 = @time27

      @time28 = c["1:20"]
      gon.time28 = @time28

      @time29 = c["1:40"]
      gon.time29 = @time29

      @time30 = c["2:00"]
      gon.time30 = @time30

      @time31 = c["4:00"]
      gon.time31 = @time31

      @time32 = c["4:20"]
      gon.time32 = @time32

      @time33 = c["4:40"]
      gon.time33 = @time33

      @time34 = c["5:00"]
      gon.time34 = @time34

      @time35 = c["5:20"]
      gon.time35 = @time35

      @time36 = c["5:40"]
      gon.time36 = @time36

      @time37 = c["6:00"] 
      gon.time37 = @time37

      @time38 = c["6:20"]
      gon.time38 = @time38

      @time39 = c["6:40"]
      gon.time39 = @time39

      @time40 = c["7:00"] 
      gon.time40 = @time40

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
    respond_to do |format|
      format.html
      format.js
    end
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


