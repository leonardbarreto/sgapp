class AddColumnsToPaciente < ActiveRecord::Migration
  def change
  	add_column :pacientes, :residencia_id, :integer
  	add_column :pacientes, :relacionamento_id, :integer
  	add_column :pacientes, :moradia_id, :integer
  	add_column :pacientes, :atremuneracaoant, :char
  	add_column :pacientes, :descatremuneradaant, :string, :limit=>25
  	add_column :pacientes, :atremuneradatual, :char
  	add_column :pacientes, :descatremuneracaoatual, :string, :limit=>25
  	add_column :pacientes, :previdencia_id, :integer
  	add_column :pacientes, :ajudafamiliar, :char
  	add_column :pacientes, :outrasrendas, :char
  	add_column :pacientes, :descoutrasrendas, :string, :limit=>25
  	add_column :pacientes, :descrelacionamento, :string, :limit=>35
  	add_column :pacientes, :hpp, :text
  	add_column :pacientes, :it1, :string, :limit=>1
  	add_column :pacientes, :it2, :string, :limit=>1
  	add_column :pacientes, :it3, :string, :limit=>1
  	add_column :pacientes, :it4, :string, :limit=>1
  	add_column :pacientes, :it5, :string, :limit=>1
  	add_column :pacientes, :outras, :text
  	add_column :pacientes, :alimentacao, :text
  	add_column :pacientes, :sono, :text
  	add_column :pacientes, :disturbio, :text
	add_column :pacientes, :etilismo, :string, :limit=>1
  	add_column :pacientes, :etilismo_tipo, :string, :limit=>100
  	add_column :pacientes, :etilismo_dose, :string, :limit=>100
  	add_column :pacientes, :etilismo_duracao, :integer
  	add_column :pacientes, :tabagismo, :string, :limit=>1
  	add_column :pacientes, :tabagismo_duracao, :integer
  	add_column :pacientes, :tabagismo_quantidade, :string, :limit=>50
  end
end
