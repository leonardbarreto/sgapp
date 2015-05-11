module ApplicationHelper
	def paginate_bootstrap(objeto)
		will_paginate(objeto,  renderer: BootstrapPagination::Rails)
	end
	def timeFormat(hora)
		hora.strftime("%H:%M")
	end
	def dateFormat(data)
		data.strftime("%D/%M%/%Y")
	end
	#Contabilizar a quantidade de dias desde o último atendimento até o dia atual
	def diasCorridos(data)
		(Date.today.to_date-data.to_date).to_i
	end
end
