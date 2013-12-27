class CreateEstadosCivis < ActiveRecord::Migration
  def change
    create_table :estados_civis do |t|
    	t.string :descricao
	    t.timestamps
    end
  end
end
