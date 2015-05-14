module PacienteReportsHelper
	def countPacientes()
  		@qtd=Paciente.find_by_staus_id(4).count
  	end
end
