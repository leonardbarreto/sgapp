class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|

      t.timestamps
    end
  end
end
