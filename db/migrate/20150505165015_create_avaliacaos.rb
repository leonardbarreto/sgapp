class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.text :queixa_principal
      t.text :anamnese
      t.integer :atendimento_id

      t.timestamps
    end
  end
end
