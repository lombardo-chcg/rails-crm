class Customers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string  :name
      t.string  :contact_info
      t.timestamps null: false
    end
  end
end
