class CreateRessonancia < ActiveRecord::Migration
  def change
    create_table :ressonancia do |t|

      t.timestamps
    end
  end
end
