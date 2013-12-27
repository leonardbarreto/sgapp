class AddCorToPaciente < ActiveRecord::Migration
  def change
  	add_column :pacientes, :cor_id, :integer
  end
end
