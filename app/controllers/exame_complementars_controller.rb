class ExameComplementarsController < InheritedResources::Base
	load_and_authorize_resource
	def show
		@exame_complementar=ExameComplementar.find_by_atendimento_id(params[:atendimento])
	end
	
	def new
		@exame_complementar=ExameComplementar.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@exame_complementar.atendimento=@atendimento
	end
	

	def create
	 	@exame_complementar = ExameComplementar.new(params[:exame_complementar])
	    respond_to do |format|
	      if @exame_complementar.save
			format.html {redirect_to @exame_complementar}
	      	format.js 
	      else
	        
	        format.js
	      end
	    end
	end

	def edit
		@exame_complementar = ExameComplementar.find(params[:id])
		#@exame_complementar=ExameComplementar.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@exame_complementar = ExameComplementar.find(params[:id])
		@exame_complementar.update_attributes(params[:exame_complementar])
		respond_to do |format|
			if @exame_complementar.update_attributes(params[:exame_complementar])
	      		format.html {redirect_to @exame_complementar}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end

	end
end
