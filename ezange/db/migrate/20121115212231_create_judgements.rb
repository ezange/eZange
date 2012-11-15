class CreateJudgements < ActiveRecord::Migration
  def change
    create_table :judgements do |t|
      t.integer :member_id
      t.date :judegemen_date
      t.time :judgement_time
      t.string :judgement

      t.timestamps
    end
  end
end
