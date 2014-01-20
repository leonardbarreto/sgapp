class Funcionario < ActiveRecord::Base
	belongs_to :pessoa, :foreign_key => 'pessoa_id'
	belongs_to :cargo, :foreign_key=>'cargo_id'
	accepts_nested_attributes_for :pessoa
	accepts_nested_attributes_for :cargo
  	attr_accessible :pessoa_attributes,:dt_admissao, :matricula, :pessoa_id,:cargo_id,:user_id
  	validates_presence_of :matricula,:cargo_id
  	belongs_to :user, :foreign_key=>'user_id'
end
