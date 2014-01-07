class CreateFuncaos < ActiveRecord::Migration
  def change
    create_table :funcaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
