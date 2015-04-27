class TipoAtendimento < ActiveRecord::Base
  attr_accessible :descricao, :duracao
  has_many :atendimento
end
