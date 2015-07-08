# encoding: utf-8
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
	def total_pacientes
		Paciente.all.count
	end
	
end
#converter Fixnum (ou boolean) para string
class Object
  def to_bs
      return 'SIM' if self == 1
      return 'NÃO' if self == 0
      return 'NÃO INFORMADO' if self.class==NilClass
      
      #return 'no' if [FalseClass, NilClass].include?(self.class) 
      #return 'yes' if self.class == TrueClass
      self
  end 
   
end
