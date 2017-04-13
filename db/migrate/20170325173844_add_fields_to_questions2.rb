class AddFieldsToQuestions2 < ActiveRecord::Migration[5.0]
  def change
  	add_column :manquestions, :type_of, :integer
  	add_column :womanquestions, :type_of, :integer
  end
end
