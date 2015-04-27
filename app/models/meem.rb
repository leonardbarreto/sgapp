class Meem < ActiveRecord::Base
  has_many :exames, :as=>:tipoexame
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  validates_presence_of :score
  validates_inclusion_of :score, in: 0..20, message: ': valores validos entre 0 e 20'
  attr_accessible :score, :atendimento_id
end
