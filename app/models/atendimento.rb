class Atendimento < ActiveRecord::Base
  belongs_to :paciente, :foreign_key=>'paciente_id'
  belongs_to :funcionario, :foreign_key=>'funcionario_id'
  has_many :exame
  # attr_accessible :title, :body
  	after_initialize :init
	def init #similar ao método default_values
		self.data_at||=Date.today
		self.horario||=Time.now
		self.tipo_atendimento_id||=4
		self.created_at ||=Time.now
		self.updated_at ||=Time.now
	end
end
