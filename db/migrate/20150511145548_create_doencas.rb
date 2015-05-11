class CreateDoencas < ActiveRecord::Migration
  def change
    create_table :doencas do |t|
      t.string :descricao
      t.string :cid10
      t.boolean :ativo
      t.timestamps
    end
  end
end
