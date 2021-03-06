module PacienteHelper
	def dateFormat(myDate)
    	# formatando data de nascimento: dd/mm/yyyy
      if myDate!=nil
        myDate.strftime("%d/%m/%Y")
      end
  	end
  	def countPacientes()
  		@qtd=Paciente.find_by_staus_id(4).count
  	end
  	def producao
        @prod=Paciente.count(:group=>'date(updated_at)',:order=>'date(updated_at) desc',:distinct=>true,:limit=>3)
    end
    
    def render_haml(code)
      engine = Haml::Engine.new(code)
      engine.render
    end
    
  
end