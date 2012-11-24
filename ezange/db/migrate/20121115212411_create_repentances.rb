class CreateRepentances < ActiveRecord::Migration
  def change
    create_table :repentances do |t|
      t.integer :sin_id
      t.string :time_donation
      t.string :monetary_donaton
      t.integer :charity_id

      t.timestamps
    end
  end
end
