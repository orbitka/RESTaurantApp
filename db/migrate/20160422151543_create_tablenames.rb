class CreateTablenames < ActiveRecord::Migration
  def change
    create_table :tablenames do |t|
      t.string :name
      t.integer :capacity
      t.timestamps null: false
    end
  end
end
