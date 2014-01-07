class CreateResidencia < ActiveRecord::Migration
  def change
    create_table :residencia do |t|
      t.string :descricao
      t.timestamps
    end
  end
end
