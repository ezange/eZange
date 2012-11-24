class CreateJudgements < ActiveRecord::Migration
  def change
    create_table :judgements do |t|
      t.references :member_id
      t.references :sin_id
      t.timestamp :timestamp
      t.text :judgement

      t.timestamps
    end
    add_index :judgements, :member_id_id
    add_index :judgements, :sin_id_id
  end
end
