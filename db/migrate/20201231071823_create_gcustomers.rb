class CreateGcustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :gcustomers do |t|

      t.integer :customer_id, null: false
      t.string  :name, null: false, default: ""
      t.string  :address, null: false, default: ""
      t.date    :firstdate, null: false
      t.integer :category_id
      t.integer :sales
      t.integer :settlement_id
      t.integer :employee
      t.timestamps
    end
  end
end
