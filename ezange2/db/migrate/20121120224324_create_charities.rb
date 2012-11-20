class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :charity_name
      t.integer :charity_street_number
      t.string :charity_street_name
      t.string :charity_city
      t.string :charity_state
      t.integer :charity_zip
      t.string :charity_country
      t.integer :charity_phone_number
      t.string :charity_type

      t.timestamps
    end
  end
end
