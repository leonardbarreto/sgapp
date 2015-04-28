class Atendimento < ActiveRecord::Base
	attr_accessible :data_at, :horario, :status_id, :tipo_atendimento_id, :paciente_id, :funcionario_id, :horario_fim
	#gem simple_calendar
	extend SimpleCalendar
	has_calendar
	
	belongs_to :paciente, :foreign_key=>'paciente_id'
	belongs_to :funcionario, :foreign_key=>'funcionario_id'
	belongs_to :tipo_atendimento, :foreign_key=>'tipo_atendimento_id'
	belongs_to :status, :foreign_key=>'status_id'
	has_many :exame
	has_one :meem
	has_one :avd
	has_one :aivd
	has_one :gd
	has_one :camcog
	has_one :cdr
	has_one :fluencia_verbal
	has_one :relogio

	validates_presence_of :paciente_id, :message=>" :informe um paciente"
	validates_presence_of :tipo_atendimento_id, :message=>" :informe um tipo de atendimento"
	# attr_accessible :title, :body
	
	after_initialize :init
	def init #similar ao método default_values
		#self.data_at||=Date.today
		self.horario||='08:00'
		self.tipo_atendimento_id||=4 #padrão - consulta
		self.created_at ||=Time.now
		self.updated_at ||=Time.now
		self.status_id ||=1 # padrão - agendado
		
	end
	def start_time #para a gem simple_calendar
  		start_date.to_datetime
	end

	def self.search(search)  
	    if search  
	      #search.upcase!
	      where('funcionario_id= ?', "#{search}")  
	    else  
	      scoped  
	    end  
  	end

  	def paciente_pessoa_nome
  		paciente.try(:nome)
  	end

  	def paciente_pessoa_nome=(nome)
  		self.paciente=Paciente.all if nome.present?#includes(:pessoa).map{|t| [t.pessoa.nome]} #find_by_nome(nome) if nome.present?
  	end

	def atendido?
    	self.status==4?true:false
  	end

  	#def calcHorarioFim
  	#	if @atendimento.funcionario.ultimoHorario?(@atendimento.data_at,@atendimento.horario)
  	#		@atendimento.horario_fim=@atendimento.horario+@atendimento.tipo_atendimento.duracao.minutes
  	#	end
  	#end

end
