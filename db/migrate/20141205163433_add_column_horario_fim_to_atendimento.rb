class AddColumnHorarioFimToAtendimento < ActiveRecord::Migration
  def change
    add_column :atendimentos, :horario_fim, :time
  end
end
