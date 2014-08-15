class AddColumnTipoexameToExame < ActiveRecord::Migration
  def change
  	add_column :exames, :tipoexame_id, :integer
  	add_column :exames, :tipoexame_type, :string
  end
end
