class CreateMemebers < ActiveRecord::Migration
  def change
    create_table :memebers do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :email_address
      t.string :religon
      t.string :education_level
      t.string :partner
      t.string :employment_status
      t.integer :age
      t.integer :number_of_children

      t.timestamps
    end
  end
end
