class AddDiabetesHasToPacientes < ActiveRecord::Migration
  def change
  	add_column :pacientes, :diabetes, :integer
  	add_column :pacientes, :has, :integer
  end
end
