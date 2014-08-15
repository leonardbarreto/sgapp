class CreateCamcogs < ActiveRecord::Migration
  def change
    create_table :camcogs do |t|
      t.string :pontos, :limit=>1
      t.integer :atendimento_id
      t.integer :tipo_exame_id

      t.timestamps
    end
  end
end
