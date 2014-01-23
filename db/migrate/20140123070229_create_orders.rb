class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :client_id
      t.string :code
      t.date   :date
      t.string :state

      t.timestamps
    end
  end
end
