class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :order_id
      t.text :text
      t.string :type

      t.timestamps
    end
  end
end
