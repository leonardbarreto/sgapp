class Paciente < ActiveRecord::Base
  extend FriendlyId
  validates_presence_of :prontuario
  validates_presence_of :slug
  friendly_id :prontuario, :use => [:slugged, :history]

	belongs_to :pessoa, :foreign_key => 'pessoa_id'
	accepts_nested_attributes_for :pessoa
  	attr_accessible :pessoa_attributes,:peso, :data_obito, :prontuario
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
end
