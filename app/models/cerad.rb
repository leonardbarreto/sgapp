class Cerad < ActiveRecord::Base
  attr_accessible :atendimento_id, :pontos, :tentativa1, :tentativa2, :tentativa3
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
