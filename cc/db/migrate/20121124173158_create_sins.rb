class CreateSins < ActiveRecord::Migration
  def change
    create_table :sins do |t|
      t.references :member
      t.string :title
      t.date :sin_date
      t.time :sin_time
      t.integer :sin_street_number
      t.string :sin_street_name
      t.string :sin_city
      t.string :sin_state
      t.integer :sin_zipcode
      t.string :sin_country
      t.text :sin

      t.timestamps
    end
    add_index :sins, :member_id
  end
end
