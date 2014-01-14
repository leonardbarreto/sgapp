class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
    	t.date :data_at
    	t.time :horario
    	t.integer :tipo_atendimento_id
    	t.integer :paciente_id
    	t.integer :funcionario_id
      	t.timestamps
    end
  end
end
