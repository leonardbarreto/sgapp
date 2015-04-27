module AtendimentoHelper
	def calcDuracao(horario,duracao)
		#duração em minutos de acordo com o tipo de atendimento
		return horario+duracao.minutes
	end
	def ultimoHorarioLivre(horario)
		#a duração do atendimento depende do tipo de atendimento
		self.horario=@horarios.last
	end

	
	def printStatus(status,tipo)
		classe=''
		case status
		when 1
			classe="label label-info"
		when 2
			classe="label label-warning"
		when 3
			classe="label label-important"
		when 4
			classe="label label-success"
		else 5
			classe="label label-inverse"
		end
		#gera e retorna um código haml com a tag span com o tipo do status e com a classe associada
		capture_haml do 
			haml_tag :span, "#{tipo}", {class: classe}
			
		end
	end
end
