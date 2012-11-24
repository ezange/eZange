class Sin < ActiveRecord::Base
  attr_accessible :member_id, :post_date, :post_time, :sin, :sin_city, :sin_country, :sin_date, :sin_state, :sin_street_name, :sin_street_number, :sin_time, :sin_zip, :title
  belongs_to :member
  has_many :judgements
  had_many :repentances
end
