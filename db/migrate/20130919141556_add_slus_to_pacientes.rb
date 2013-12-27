class AddSlusToPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :slug, :string
    add_index :pacientes, :slug, :unique=>true
  end
end
