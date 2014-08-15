class Avd < ActiveRecord::Base
  attr_accessible :alimentacao, :banho, :continencia, :higiene, :transferencia, :vestir
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
