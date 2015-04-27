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
end
