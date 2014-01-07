class Paciente < ActiveRecord::Base
  extend FriendlyId
  belongs_to :residencia, :foreign_key=>'residencia_id'
  belongs_to :relacionamento, :foreign_key=>'relacionamento_id'
  belongs_to :moradia, :foreign_key=>'moradia_id'
  belongs_to :previdencia, :foreign_key=>'previdencia_id'
  belongs_to :pessoa, :foreign_key => 'pessoa_id'
  validates_presence_of :prontuario,:residencia_id,:moradia_id,:relacionamento_id
  validates_presence_of :slug
  friendly_id :prontuario, :use => [:slugged, :history]
	accepts_nested_attributes_for :pessoa
  	attr_accessible :pessoa_attributes,:peso, :data_obito, :prontuario, :residencia_id, :relacionamento_id, :moradia_id, :atremuneracaoant, :descatremuneradaant, :atremuneradatual, :descatremuneracaoatual, :previdencia_id, :ajudafamiliar, :outrasrendas, :hpp, :outras, :alimentacao, :sono, :disturbio, :etilismo_tipo, :etilismo_dose, :etilismo_duracao, :tabagismo_duracao, :tabagismo_quantidade,:religiao, :plano_de_saude,  :it1, :it2, :it3, :it4, :it5, :etilismo,:tabagismo
    after_initialize :novoprontuario
  def self.search(search)  
    if search  
      search.upcase!
      where('nome like ?', "#{search}%")  
    else  
      scoped  
    end  
  end
  def novoprontuario()
    #indica um número do prontuário ao criar nova pessoa
    self.prontuario ||= Paciente.count+1
  end
  def countPacientes()
    @pacientes = Paciente.count
  end
end
