class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.integer :street_number
      t.string :street_name
      t.integer :zipcode
      t.string :email
      t.string :religon
      t.string :education_level
      t.string :partner
      t.string :emloyment_status
      t.integer :age
      t.string :number_of_children

      t.timestamps
    end
  end
end
