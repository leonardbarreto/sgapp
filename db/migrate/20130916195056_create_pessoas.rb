class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_nas
      t.string :sexo
      t.string :naturalidade, :limit=>20
      t.string :nacionalidade,:limit=>20
      t.string :identidade,:limit=>10
      t.string :cpf,:limit=>14
      t.string :nome_pai
      t.string :nome_mae
      t.string :endereco
      t.string :bairro,:limit=>30
      t.integer :municipio_id
      t.string :telefone,:limit=>14
      t.string :telefonecel,:limit=>14
      t.integer :estado_civil_id

      t.timestamps
    end
  end
end
