class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :charity_name
      t.string :charity_street_number
      t.string :charity_street_name
      t.string :charity_city
      t.string :charity_stat
      t.string :charity_zip
      t.string :charity_country
      t.string :charity_phone_number
      t.string :charity_type

      t.timestamps
    end
  end
end
