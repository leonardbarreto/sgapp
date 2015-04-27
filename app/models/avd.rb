class Avd < ActiveRecord::Base
  attr_accessible :alimentacao, :banho, :continencia, :higiene, :transferencia, :vestir, :atendimento_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
