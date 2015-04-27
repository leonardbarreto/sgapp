class CreateAgendaProfissionals < ActiveRecord::Migration
  def change
    create_table :agenda_profissionals do |t|
      t.integer :dia
      t.time :hora_ini
      t.time :hora_fim
      t.integer :funcionario_id

      t.timestamps
    end
  end
end
