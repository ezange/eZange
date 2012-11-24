class Judgement < ActiveRecord::Base
  attr_accessible :judgement_date, :judgement_time, :jugement, :memebr_id, :sin_id
  belongs_to :members
  belongs_to :sins
end
