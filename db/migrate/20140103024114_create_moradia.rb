class CreateMoradia < ActiveRecord::Migration
  def change
    create_table :moradia do |t|
    	t.string :descricao
      	t.timestamps
    end
  end
end
