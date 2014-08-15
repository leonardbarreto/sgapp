class CreateCdrs < ActiveRecord::Migration
  def change
    create_table :cdrs do |t|
      t.string :pontos, :limit=>3
      t.integer :atendimento_id
      t.integer :tipo_exame_id

      t.timestamps
    end
  end
end
