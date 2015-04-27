class AddColumnAtivoToAgendaProfissional < ActiveRecord::Migration
  def change
  	add_column :agenda_profissionals, :ativo, :boolean
  end
end
