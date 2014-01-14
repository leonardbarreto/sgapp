class CreateTipoAtendimentos < ActiveRecord::Migration
  def change
    create_table :tipo_atendimentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
