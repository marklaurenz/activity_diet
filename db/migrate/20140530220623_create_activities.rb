class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.string :image_url
      t.integer :min_people
      t.string :season
      t.integer :zip
      t.string :website

      t.timestamps

    end
  end
end
