class Aivd < ActiveRecord::Base
  attr_accessible :atendimento_id, :dependencia, :pontos, :tipo_exame_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  validates_presence_of :dependencia
  validates_presence_of :pontos
  validates_inclusion_of :pontos, in: 0..27, message: ': valores validos entre 0 e 27'
end
