class AddColumnGrauInstCompletoToPessoas < ActiveRecord::Migration
  def change
  	#grau de instrução completo? 1=true; 0=false
  	add_column :pessoas, :gi_completo, :string, :length=>1
  end
end
