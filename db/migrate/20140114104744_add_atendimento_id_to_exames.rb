class AddAtendimentoIdToExames < ActiveRecord::Migration
  def change
  	add_column :exame, :atendimento_id, :integer
  end
end
