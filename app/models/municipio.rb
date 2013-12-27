class Municipio < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :estado
end
