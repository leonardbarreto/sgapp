class AddPontosToAvds < ActiveRecord::Migration
  def change
  	add_column :avds, :pontos, :integer
  end
end
