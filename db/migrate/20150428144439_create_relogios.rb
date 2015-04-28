class CreateRelogios < ActiveRecord::Migration
  def change
    create_table :relogios do |t|
      t.integer :pontos
      t.integer :atendimento_id

      t.timestamps
    end
  end
end
