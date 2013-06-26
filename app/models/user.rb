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
#

class User < ActiveRecord::Base
	include UsersHelper

  attr_accessible :email, :name, :phone, :time1, :time2, :day

  validates_presence_of :email, :name, :phone, :on => :create
  validates_uniqueness_of :name, :email, :phone, :on => :create
  validates_email :email

end
