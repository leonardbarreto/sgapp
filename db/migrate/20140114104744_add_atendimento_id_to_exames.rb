class AddAtendimentoIdToExames < ActiveRecord::Migration
  def change
  	add_column :exames, :atendimento_id, :integer
  end
end
