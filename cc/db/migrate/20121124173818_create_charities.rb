class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.integer :phone_number
      t.string :charity_type

      t.timestamps
    end
  end
end
