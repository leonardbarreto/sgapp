class Relacionamento < ActiveRecord::Base
  # attr_accessible :title, :body
    belongs_to :paciente
  attr_accessible :descricao

end
