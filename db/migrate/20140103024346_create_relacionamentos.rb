class CreateRelacionamentos < ActiveRecord::Migration
  def change
    create_table :relacionamentos do |t|
      t.string :descricao
      t.timestamps
    end
  end
end
