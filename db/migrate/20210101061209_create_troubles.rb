class CreateTroubles < ActiveRecord::Migration[6.0]
  def change
    create_table :troubles do |t|

      t.integer :customer_id, null: false
      t.date    :sdate, null: false
      t.string  :title, null: false
      t.string  :detail, null: false
      t.string  :content
      t.date    :edate
      t.timestamps
    end
  end
end
