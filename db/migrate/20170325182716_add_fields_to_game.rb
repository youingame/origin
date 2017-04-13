class AddFieldsToGame < ActiveRecord::Migration[5.0]
  def change
  	add_column :games, :type_of, :integer
  end
end
