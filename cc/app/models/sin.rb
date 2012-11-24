class Sin < ActiveRecord::Base
  belongs_to :member
  has_many :judgements
  has_many :repentances
  
  attr_accessible :sin, :sin_city, :sin_country, :sin_date, :sin_state, :sin_street_name, :sin_street_number, :sin_time, :sin_zipcode, :title
end
