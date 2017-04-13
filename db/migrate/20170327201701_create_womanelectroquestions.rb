class CreateWomanelectroquestions < ActiveRecord::Migration[5.0]
  def change
    create_table :womanelectroquestions do |t|
      t.string :question
      t.integer :points

      t.timestamps
    end
  end
end
