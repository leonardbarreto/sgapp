class CreateMeems < ActiveRecord::Migration
  def change
    create_table :meems do |t|
    	t.integer :score
    	t.integer :tipo_exame_id
      	t.timestamps
    end
  end
end
