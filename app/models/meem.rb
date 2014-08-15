class Meem < ActiveRecord::Base
  has_many :exames, :as=>:tipoexame
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  # attr_accessible :title, :body
end
