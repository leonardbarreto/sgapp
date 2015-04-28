class Relogio < ActiveRecord::Base
  attr_accessible :atendimento_id, :pontos
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  validates_inclusion_of :pontos, in: 0..5, message: ': valores possiveis 0, 1, 2, 3, 4 ou 5'
end
