class CreateFluenciaVerbals < ActiveRecord::Migration
  def change
    create_table :fluencia_verbals do |t|
      t.string :pontos
      t.integer :atendimento_id
      t.integer :tipo_exame_id

      t.timestamps
    end
  end
end
