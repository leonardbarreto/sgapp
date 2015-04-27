class AddColunmDuracaoToTipoAtendimentos < ActiveRecord::Migration
  def change
  	add_column :tipo_atendimentos, :duracao, :integer
  end
end
