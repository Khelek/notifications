class Order < ActiveRecord::Base
  attr_accessible :client_id, :code, :date
  
  state_machine :state, initial: :none do
    state :packing
    state :loading
    state :delivery do
      def delivery_time
        @time
      end
    end
    state :delivered
        
    event :pack! do
      transition :none => :packing
    end
    
    event :load! do
      transition :packing => :loading
    end
    
    event :deliver! do
      transition :loading => :delivery
    end
    
    event :delivered! do
      transition :delivery => :delivered
    end
  end

  has_many :messages
  belongs_to :client
end
