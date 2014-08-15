class AddColumnAtendimentoIdToMeem < ActiveRecord::Migration
  def change
  	add_column :meems, :atendimento_id, :integer
  end
end
