class Cargo < ActiveRecord::Base
  has_one :funcionario
  before_update :maiusculo
  before_create :maiusculo
  belongs_to :funcao, :foreign_key => 'funcao_id'
  attr_accessible :descricao, :doc, :funcao_id, :tipodoc
  validates_presence_of :funcao_id, :descricao
	def maiusculo()
  		#colocar para maiúsculo se existir algo digitado
	    if (self.descricao)
	      self.descricao.upcase!
		end
	end
end
