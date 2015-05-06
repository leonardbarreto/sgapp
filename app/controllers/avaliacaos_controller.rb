class AvaliacaosController < InheritedResources::Base
load_and_authorize_resource
	def show
		@avaliacaos=Avaliacao.find_by_atendimento_id(params[:atendimento])
	end
	
	def new
		@avaliacao=Avaliacao.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@avaliacao.atendimento=@atendimento
	end
	

	def create
	 	@avaliacao = Avaliacao.new(params[:avaliacao])
	    respond_to do |format|
	      if @avaliacao.save
			format.html {redirect_to @avaliacao}
	      	format.js 
	      else
	        
	        format.js
	      end
	    end
	end

	def edit
		@avaliacao = Avaliacao.find(params[:id])
		#@avaliacao=Avaliacao.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@avaliacao = Avaliacao.find(params[:id])
		@avaliacao.update_attributes(params[:avaliacao])
		respond_to do |format|
			if @avaliacao.update_attributes(params[:avaliacao])
	      		format.html {redirect_to @avaliacao}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end

	end
end
