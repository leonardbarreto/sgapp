class CreateRessonancias < ActiveRecord::Migration
  def change
    create_table :ressonancias do |t|
      t.text :laudo
      t.date :data_exame
      t.integer :atendimento_id

      t.timestamps
    end
  end
end
