class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone

  has_one :schedule

  validates_presence_of :email, :name, :phone
end
