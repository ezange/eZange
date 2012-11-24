class Repentance < ActiveRecord::Base
  belongs_to :charity
  belongs_to :sin
  attr_accessible :money_donation, :time_donation
end
