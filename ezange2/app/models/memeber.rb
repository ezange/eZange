class Memeber < ActiveRecord::Base
  attr_accessible :age, :city, :education_level, :email_address, :employment_status, :first_name, :last_name, :number_of_children, :partner, :password, :religon, :state, :street_name, :street_number, :user_name, :zip_code
  has_many :sins
  has_many :judgements
end
