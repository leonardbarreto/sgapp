class Avaliacao < ActiveRecord::Base
  attr_accessible :anamnese, :queixa_principal, :atendimento_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
