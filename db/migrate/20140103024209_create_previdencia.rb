class CreatePrevidencia < ActiveRecord::Migration
  def change
    create_table :previdencia do |t|
      t.string :descricao
      t.timestamps
    end
  end
end
