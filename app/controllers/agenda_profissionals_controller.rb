class AgendaProfissionalsController < InheritedResources::Base
	load_and_authorize_resource

	def index
		if params[:search]
			@agendas = AgendaProfissional.joins(:funcionario).search(params[:search]).order(:dia)
		else
			@agendas = []
		end
		@funcionarios=Funcionario.joins(:pessoa).find(:all).map{|f| [f.pessoa.nome,f.cargo.descricao, f.id]}
	end
	def edit
		@agendas = AgendaProfissional.find(params[:id])
	end
	
	def update
    	@agenda = AgendaProfissional.find(params[:id])
    	respond_to do |format|
	      	if @agenda.update_attributes(params[:agenda_profissional])
	        	format.html { redirect_to agenda_profissionals_path(@agenda), notice: 'Agenda atualizada com sucesso.' }
	        	#flash[:notice] ='Agenda atualizada com sucesso.' 
	      	else
	        	format.html { render action: "edit" }
	        	#format.json { render json: @agendas.errors, status: :unprocessable_entity }
	      	end
    	end
  	end

  	def show
    	@agenda = AgendaProfissional.find(params[:id])
    	respond_to do |format|
      		format.html # show.html.erb
      		format.js
    	end
  	end
end