class Message < ActiveRecord::Base
  attr_accessible :text, :sending_type, :order_id, :state_type

  belongs_to :order
end
