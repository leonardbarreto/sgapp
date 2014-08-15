class CreateAivds < ActiveRecord::Migration
  def change
    create_table :aivds do |t|
      t.integer :pontos
      t.integer :dependencia
      t.integer :atendimento_id
      t.integer :tipo_exame_id

      t.timestamps
    end
  end
end
