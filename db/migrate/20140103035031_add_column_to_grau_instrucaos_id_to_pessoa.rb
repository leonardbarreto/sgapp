class AddColumnToGrauInstrucaosIdToPessoa < ActiveRecord::Migration
  def change
	add_column :pessoas, :grau_instrucao_id, :integer
  end
end
