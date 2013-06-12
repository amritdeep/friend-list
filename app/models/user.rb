class User < ActiveRecord::Base
  attr_accessible :address, :email, :message, :name

  #validates :address, :email, :message, :name, presence: :true
  validates :name, :email, :address, :presence => true

  scope :orders, order("created_at DESC") # => Select * from user order by "created_at DESC"
  
end
