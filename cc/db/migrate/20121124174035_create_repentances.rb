class CreateRepentances < ActiveRecord::Migration
  def change
    create_table :repentances do |t|
      t.references :charity
      t.references :sin
      t.string :time_donation
      t.string :money_donation

      t.timestamps
    end
    add_index :repentances, :charity_id
    add_index :repentances, :sin_id
  end
end
