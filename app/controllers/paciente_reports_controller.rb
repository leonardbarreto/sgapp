class PacienteReportsController < InheritedResources::Base
	def index
		
		
	end
	def ausentes
		@pacientes_atendidos=Paciente.joins(:atendimento).uniq.where('status_id=?',4)
		
		if params[:periodo]
			@pacientes_ausentes=[]
			@pacientes_atendidos.each do |pa|
				# se ultimo (last)  atendimento (status = 4) realizado ha x meses
				if pa.atendimento.where('status_id=?',4).order(:data_at).last.realizadoXMesesAtras?(params[:periodo].to_i)
					@pacientes_ausentes << pa
				end
			end
		else
			@pacientes_ausentes=[]
			
		end
	end
end

