class CreateGds < ActiveRecord::Migration
  def change
    create_table :gds do |t|
      t.integer :pontos
      t.integer :atendimento_id
      t.integer :tipo_exame_id

      t.timestamps
    end
  end
end
