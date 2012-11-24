class Repentance < ActiveRecord::Base
  belongs_to :charity_id
  belongs_to :sin_id
  attr_accessible :money_donation, :time_donation
end
