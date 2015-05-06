class AddColumnAtendimentoIdToExameComplementar < ActiveRecord::Migration
  def change
  	add_column :exame_complementars, :atendimento_id, :integer
  end
end
