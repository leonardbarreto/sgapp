class Camcog < ActiveRecord::Base
  attr_accessible :atendimento_id, :pontos, :tipo_exame_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
