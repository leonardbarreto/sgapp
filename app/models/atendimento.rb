class Atendimento < ActiveRecord::Base
	#gem simple_calendar
	extend SimpleCalendar
	has_calendar
	
	belongs_to :paciente, :foreign_key=>'paciente_id'
	belongs_to :funcionario, :foreign_key=>'funcionario_id'
	belongs_to :tipo_atendimento, :foreign_key=>'tipo_atendimento_id'
	has_many :exame
	has_one :meem
	has_one :avd
	has_one :aivd
	has_one :gd
	has_one :camcog
	has_one :cdr
	has_one :fluencia_verbal
	# attr_accessible :title, :body
	after_initialize :init
	def init #similar ao método default_values
		self.data_at||=Date.today
		self.horario||=Time.now
		self.tipo_atendimento_id||=4
		self.created_at ||=Time.now
		self.updated_at ||=Time.now
	end
	def start_time #para a gem simple_calendar
  		start_date.to_datetime
	end
end
