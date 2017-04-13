class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :step
      t.string :man_name
      t.string :woman_name
      t.integer :man_points
      t.integer :woman_points

      t.timestamps
    end
  end
end
