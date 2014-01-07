class RemoveColumnDocToCargos < ActiveRecord::Migration
  def up
  	remove_column :cargos, :doc
  end

  def down
  	add_column :cargos, :doc
  end
end
