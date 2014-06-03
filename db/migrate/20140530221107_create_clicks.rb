class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.integer :user_id
      t.integer :activity_id
      t.string :activity
      t.datetime :click_time

      t.timestamps

    end
  end
end
