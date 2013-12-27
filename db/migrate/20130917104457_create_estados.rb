class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
    	t.string :nome, :limit=>80
    	t.string :uf, :limit=>2
      t.timestamps
    end
  end
end
