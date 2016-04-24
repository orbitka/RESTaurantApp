class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :bill_id
      t.integer :meal_id
      t.boolean :delivered

      t.timestamps null: false
    end
  end
end
