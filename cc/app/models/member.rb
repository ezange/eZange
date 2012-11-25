class Member < ActiveRecord::Base
  attr_accessible :age, :education_level, :email, :emloyment_status, :first_name, :last_name, :number_of_children, :partner, :password, :religon, :street_name, :street_number, :user_name, :zipcode, :password_confirmation
  validates :user_name, :presence => true, :uniqueness => true
  validates :password, :presence => true, :confirmation => true
  has_many :sins
  has_many :judgements
end
