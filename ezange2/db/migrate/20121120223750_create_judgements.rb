class CreateJudgements < ActiveRecord::Migration
  def change
    create_table :judgements do |t|
      t.integer :memebr_id
      t.integer :sin_id
      t.date :judgement_date
      t.time :judgement_time
      t.string :jugement

      t.timestamps
    end
  end
end
