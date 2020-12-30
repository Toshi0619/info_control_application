class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.integer :customer_id
      t.string :firstname, null: false, default: ""
      t.string :lastname, null: false, default: ""
      t.string :role, default: ""
      t.string :email, default: ""
      t.string :phonenumber, default: ""
      t.integer :decision_id
      t.string :hobby
      t.string :stance
      t.string :personality
      t.string :habit
      t.timestamps
    end
  end
end
