class CreateJudgements < ActiveRecord::Migration
  def change
    create_table :judgements do |t|
      t.references :member
      t.references :sin
      t.timestamp :timestamp
      t.text :judgement

      t.timestamps
    end
    add_index :judgements, :member_id
    add_index :judgements, :sin_id
  end
end
