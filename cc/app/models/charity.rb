class Charity < ActiveRecord::Base
  attr_accessible :charity_type, :city, :country, :name, :phone_number, :state, :street_name, :street_number, :zipcode
end
