class CreateCerads < ActiveRecord::Migration
  def change
    create_table :cerads do |t|
      t.integer :pontos
      t.integer :tentativa1
      t.integer :tentativa2
      t.integer :tentativa3
      t.integer :atendimento_id

      t.timestamps
    end
  end
end


