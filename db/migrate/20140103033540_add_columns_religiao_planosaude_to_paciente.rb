class AddColumnsReligiaoPlanosaudeToPaciente < ActiveRecord::Migration
  def change
  	add_column :pacientes, :religiao, :string, :limit => 40
  	add_column :pacientes, :plano_de_saude, :string, :limit=>3
  	
  end
end
