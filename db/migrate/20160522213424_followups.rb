class Followups < ActiveRecord::Migration
  def change
    create_table :followups do |t|
      t.string  :comments
      t.integer :customer_id
      t.timestamps null: false
    end
  end
end
