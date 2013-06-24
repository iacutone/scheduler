# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  time       :string(255)
#  counter    :integer          default(0)
#  day        :string(255)
#  time1      :string(255)
#  time2      :string(255)
#  time3      :string(255)
#  time4      :string(255)
#  time5      :string(255)
#  time6      :string(255)
#  time7      :string(255)
#  time8      :string(255)
#  time9      :string(255)
#  time10     :string(255)
#  time11     :string(255)
#  time12     :string(255)
#  time13     :string(255)
#  time14     :string(255)
#  time15     :string(255)
#  time16     :string(255)
#  time17     :string(255)
#  time18     :string(255)
#  time19     :string(255)
#

class User < ActiveRecord::Base
	include UsersHelper

  attr_accessible :email, :name, :phone, :time, :counter, :day, :time1, :time2, :time3, :time4, 
  :time5, :time6, :time7, :time8, :time9, :time10, :time11, :time12, :time13, :time14, :time15, 
  :time16, :time17, :time18, :time19

  validates_presence_of :email, :name, :phone
  validates_uniqueness_of :name, :email, :on => :create

end
