class CreateCores < ActiveRecord::Migration
  def change
    create_table :cores do |t|
    	t.string :descricao
      	t.timestamps
    end
  end
end
