class CreateEncaminhamentos < ActiveRecord::Migration
  def change
    create_table :encaminhamentos do |t|
    	t.string :descricao
      t.timestamps
    end
  end
end
