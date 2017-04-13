class AddQuestionFieldsToGame < ActiveRecord::Migration[5.0]
  def change
  	add_column :games, :m_oral, :boolean, default: true
  	add_column :games, :m_anal, :boolean
  	add_column :games, :m_bdsm, :boolean
  	add_column :games, :m_fist, :boolean
  	add_column :games, :m_pie, :boolean
  	add_column :games, :m_electro, :boolean
  	add_column :games, :w_oral, :boolean, default: true
  	add_column :games, :w_anal, :boolean
  	add_column :games, :w_bdsm, :boolean
  	add_column :games, :w_fist, :boolean
  	add_column :games, :w_pie, :boolean
  	add_column :games, :w_electro, :boolean
  	add_column :games, :g_vibrator, :boolean
  	add_column :games, :g_anal_plug, :boolean
  	add_column :games, :g_vibro_pule, :boolean
  	add_column :games, :g_massager, :boolean
  	add_column :games, :g_strapon, :boolean
  	add_column :games, :g_bondage, :boolean
  	add_column :games, :g_pump, :boolean
  	add_column :games, :g_plet, :boolean
  	add_column :games, :g_klyap, :boolean
  	add_column :games, :g_electro, :boolean
  	add_column :games, :g_vosk, :boolean
  	add_column :games, :g_latex, :boolean
  	add_column :games, :g_rashiritel, :boolean

  end
end
