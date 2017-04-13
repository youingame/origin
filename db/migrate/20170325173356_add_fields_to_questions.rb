class AddFieldsToQuestions < ActiveRecord::Migration[5.0]
  def change
  	add_column :manquestions, :step, :integer
  	add_column :womanquestions, :step, :integer
  end
end
