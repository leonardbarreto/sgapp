class AddColumnCorIdToPessoa < ActiveRecord::Migration
  def change
  	add_column :pessoas, :cor_id, :integer
  end
end
