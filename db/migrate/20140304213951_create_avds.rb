class CreateAvds < ActiveRecord::Migration
  def change
    create_table :avds do |t|
      t.string :banho, :limit=>1
      t.string :vestir, :limit=>1
      t.string :higiene, :limit=>1
      t.string :transferencia, :limit=>1
      t.string :continencia, :limit=>1
      t.string :alimentacao, :limit=>1
      t.integer :atendimento_id
      t.timestamps
    end
  end
end
