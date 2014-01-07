class AddColumnToGrauInstrucao < ActiveRecord::Migration
  def change
  	  	add_column :grau_instrucaos, :descricao, :string, :limit => 40
  end
end
