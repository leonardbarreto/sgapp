class CreateAtendimentoReports < ActiveRecord::Migration
  def change
    create_table :atendimento_reports do |t|

      t.timestamps
    end
  end
end
