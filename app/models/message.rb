class Message < ActiveRecord::Base
  attr_accessible :text, :type, :order_id

  belongs_to :order
end
