class Client < ActiveRecord::Base
  attr_accessible :name, :email, :phone

  has_many :orders
end
