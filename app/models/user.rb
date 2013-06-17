class User < ActiveRecord::Base
  attr_accessible :address, :email, :message, :name

  #validates :address, :email, :message, :name, presence: :true
  validates :name, :email, :address, :presence => true

  scope :orders, order("created_at DESC") # => Select * from user order by "created_at DESC"
  scope :search, lambda {|name| where('name LIKE ?', "#{name}")} # => Select "users".* from "users" where (name like '#{name}%')

  # def self.search(name)
  # 	where('name LIKE ?', "#{name}")
  # end
 end
  