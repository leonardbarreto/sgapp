class Encaminhamento < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :paciente
end
