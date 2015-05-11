class Avaliacao < ActiveRecord::Base
  attr_accessible :anamnese, :queixa_principal, :atendimento_id, :doenca_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  belongs_to :doenca, :foreign_key=>'doenca_id'
end
