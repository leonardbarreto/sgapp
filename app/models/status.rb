class Status < ActiveRecord::Base
  attr_accessible :tipo
  has_many :atendimento
end
