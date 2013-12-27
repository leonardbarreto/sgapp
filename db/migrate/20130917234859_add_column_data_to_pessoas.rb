class AddColumnDataToPessoas < ActiveRecord::Migration
  def change
  	add_column :pessoas, :data_nas, :datetime
  end
end
