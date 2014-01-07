class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :descricao
      t.string :doc
      t.string :tipodoc
      t.integer :funcao_id

      t.timestamps
    end
  end
end
