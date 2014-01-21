class AddColumnEncaminhamentoIdToPacientes < ActiveRecord::Migration
  def change
  	add_column :pacientes, :encaminhamento_id, :integer
  end
end
