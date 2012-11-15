class Member < ActiveRecord::Base
  attr_accessible :age, :education_level, :email_string, :employment_status, :first_name, :last_name, :number_of_children, :partner, :password, :religon, :street_name, :street_number, :user_name, :zip_code
end
