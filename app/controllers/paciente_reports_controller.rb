class PacienteReportsController < InheritedResources::Base
	def index
		
		@paciente_reports=Paciente.joins(:atendimento)
		@pacientes_atendidos=Paciente.joins(:atendimento).uniq.where('status_id=?',4)
		#@faltantes=@paciente_reports
	end
end
