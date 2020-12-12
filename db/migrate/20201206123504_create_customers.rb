class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.date :firstdate, nukk: false
      t.integer :category_id
      t.integer :employee
      t.integer :sales
      t.integer :settlement_id
      t.string :product
      t.string :memo
      t.string :takeover
      t.timestamps
    end
  end
end
