class Doenca < ActiveRecord::Base
  attr_accessible :cid10, :descricao
  #belongs_to :avaliacaos, :foreign_key=>'doenca_id'
  has_one :avaliacaos
end
