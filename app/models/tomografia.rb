class Tomografia < ActiveRecord::Base
  attr_accessible :atendimento_id, :data_exame, :laudo
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
