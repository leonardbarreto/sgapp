class TipoAtendimento < ActiveRecord::Base
  attr_accessible :descricao
  has_many :atendimento
end
