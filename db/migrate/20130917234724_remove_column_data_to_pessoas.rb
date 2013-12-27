class RemoveColumnDataToPessoas < ActiveRecord::Migration
  def up
  	remove_column :pessoas, :data_nas
  end

  def down
  	add_column :pessoas, :data_nas, :date
  end
end
