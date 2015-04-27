class AddColumnStatusIdToAtendimentos < ActiveRecord::Migration
  def change
    add_column :atendimentos, :status_id, :integer
  end
end
