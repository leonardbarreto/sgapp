class AddUserIdToFuncionario < ActiveRecord::Migration
  def change
  	add_column :funcionarios, :user_id, :integer, :default=>0
  end
end
