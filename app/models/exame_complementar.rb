class ExameComplementar < ActiveRecord::Base
  attr_accessible :acido_folico, :b12, :creatinina, :glicose, :hc, :hemograma, :hmgl, :ht, :leucocitos, :potassio, :sodio, :tsh, :vdrl, :atendimento_id
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
end
