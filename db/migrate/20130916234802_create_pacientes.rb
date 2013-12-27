class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :peso
      t.date :data_obito
      t.integer :prontuario
      t.integer :pessoa_id
      t.timestamps
    end
  end
end
