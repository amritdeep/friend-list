class User < ActiveRecord::Base
  attr_accessible :address, :email, :message, :name

  #validates :address, :email, :message, :name, presence: :true
  validates :name, :email, :presence => true
end
