class Camcog < ActiveRecord::Base
  attr_accessible :atendimento_id, :pontos, :tipo_exame_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  validates_presence_of :pontos
  validates_inclusion_of :pontos, in: %w(A M B), message: ': valores possiveis A(alto), M(moderado) ou B(baixo)'
end
