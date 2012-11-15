class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :street_number
      t.string :street_name
      t.string :zip_code
      t.string :email_string
      t.string :religon
      t.string :education_level
      t.string :partner
      t.string :employment_status
      t.string :age
      t.string :number_of_children

      t.timestamps
    end
  end
end
