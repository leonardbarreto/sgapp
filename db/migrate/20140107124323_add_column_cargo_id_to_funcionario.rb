class AddColumnCargoIdToFuncionario < ActiveRecord::Migration
  def change
  	add_column :funcionarios, :cargo_id, :integer
  end
end
