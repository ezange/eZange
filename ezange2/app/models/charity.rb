class Charity < ActiveRecord::Base
  attr_accessible :charity_city, :charity_country, :charity_name, :charity_phone_number, :charity_state, :charity_street_name, :charity_street_number, :charity_type, :charity_zip
  has_many :repentances
end
