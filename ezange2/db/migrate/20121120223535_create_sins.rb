class CreateSins < ActiveRecord::Migration
  def change
    create_table :sins do |t|
      t.integer :member_id
      t.string :title
      t.date :post_date
      t.time :post_time
      t.date :sin_date
      t.time :sin_time
      t.string :sin
      t.integer :sin_street_number
      t.string :sin_street_name
      t.string :sin_city
      t.string :sin_state
      t.integer :sin_zip
      t.string :sin_country

      t.timestamps
    end
  end
end
