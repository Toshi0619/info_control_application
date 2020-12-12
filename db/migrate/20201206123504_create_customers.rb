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

pry(main)> Customer.create(name: "株式会社Dの意思", address: "埼玉県さいたま市浦和19-9-8", firstdate: "2000-06-01", category_id: "1", employee: "5000", sales: "4000", settlement_id: "10", product: "人事給与", memo: "", takeover:"", user_ids: [1, 2])
