module PacienteHelper
	def data_nasc(date)
    	# formatando data de nascimento: dd/mm/yyyy
    	date.strftime("%d/%m/%Y")
  	end
  	def countPacientes()
  		@qtd=Paciente.count
  	end
  	def producao
        #Paciente.count(:group=>:updated_at,:order=>:updated_at).map {|key,value|  {key.strftime("%d/%m%/%Y")=>value}}.reduce(:merge)
        producao=Paciente.count(:group=>'date(updated_at)',:order=>'date(updated_at) desc',:distinct=>true,:limit=>3)
        if !producao.nil?
        	producao.each do |k,v|
        		puts "#{k}: #{v}"
        	end
        else
        	scoped
        end

        #@p.each{|k,v| "#{k}: #{v}"}
        #@pacientes.map{|k,v| "#{k}-> #{v}" }
    end
end