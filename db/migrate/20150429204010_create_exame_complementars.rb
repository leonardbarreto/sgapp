class CreateExameComplementars < ActiveRecord::Migration
  def change
    create_table :exame_complementars do |t|
      t.decimal :glicose
      t.decimal :tsh
      t.decimal :b12
      t.decimal :acido_folico
      t.decimal :vdrl
      t.decimal :hemograma
      t.decimal :ht
      t.decimal :hc
      t.decimal :hmgl
      t.decimal :leucocitos
      t.decimal :creatinina
      t.decimal :sodio
      t.decimal :potassio

      t.timestamps
    end
  end
end
