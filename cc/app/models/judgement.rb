class Judgement < ActiveRecord::Base
  belongs_to :member
  belongs_to :sin
  attr_accessible :judgement, :timestamp
end
