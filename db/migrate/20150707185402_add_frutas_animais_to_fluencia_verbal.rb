class AddFrutasAnimaisToFluenciaVerbal < ActiveRecord::Migration
  def change
  	add_column :fluencia_verbals, :animais, :integer
  	add_column :fluencia_verbals, :frutas, :integer
  end
end
