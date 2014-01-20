class AddColumnAtivoToFuncionarios < ActiveRecord::Migration
  def change
  	add_column :funcionarios, :ativo, :string, :limit=>1,:default=>1
  end
end
