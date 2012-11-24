class CreateRepentances < ActiveRecord::Migration
  def change
    create_table :repentances do |t|
      t.references :charity_id
      t.references :sin_id
      t.string :time_donation
      t.string :money_donation

      t.timestamps
    end
    add_index :repentances, :charity_id_id
    add_index :repentances, :sin_id_id
  end
end
