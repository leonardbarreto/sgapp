class Cdr < ActiveRecord::Base
  attr_accessible :atendimento_id, :pontos, :tipo_exame_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  validates_inclusion_of :pontos, in: %w(0 0.5 1 2 3), message: ': valores possiveis 0; 0,5; 1; 2 ou 3'
end
