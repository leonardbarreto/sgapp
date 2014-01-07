class RemoveCorIdToPaciente < ActiveRecord::Migration
  def up
  	remove_column :pacientes, :cor_id
  end

  def down
  	add_column :pacientes, :cor_id
  end
end
