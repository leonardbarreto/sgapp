module PacienteHelper
	def data_nasc(date)
    	# formatando data de nascimento: dd/mm/yyyy
    	date.strftime("%d/%m/%Y")
  	end
  	def producao
    	#Paciente.count(:group=>:updated_at,:order=>:updated_at).map {|key,value|  {key.strftime("%d/%m%/%Y")=>value}}.reduce(:merge)
  		Paciente.count(:group=>'date(updated_at)',:order=>'date(updated_at) desc',:distinct=>true,:limit=>3)
  		#@pacientes.map{|k,v| "#{k}-> #{v}" }
  	end
end