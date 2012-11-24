class Repentance < ActiveRecord::Base
  attr_accessible :charity_id, :monetary_donation, :sin_id, :time_donation
  belongs_to :sins
  belongs_to :charities
end
