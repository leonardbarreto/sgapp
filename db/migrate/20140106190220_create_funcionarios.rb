class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.integer :matricula
      t.date :dt_admissao
      t.integer :pessoa_id

      t.timestamps
    end
  end
end
