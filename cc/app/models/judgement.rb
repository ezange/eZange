class Judgement < ActiveRecord::Base
  belongs_to :member_id
  belongs_to :sin_id
  attr_accessible :judgement, :timestamp
end
