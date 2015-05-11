class AddDoencaIdColumnToAnamnese < ActiveRecord::Migration
  def change
  	add_column :avaliacaos, :doenca_id, :integer
  end
end
