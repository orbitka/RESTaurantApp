class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :tablename_id
      t.integer :user_id
      t.boolean :paid, :default => false
      t.boolean :tip, :default => false
      t.timestamps null: false
    end
  end
end
