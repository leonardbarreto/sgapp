class RessonanciasController < InheritedResources::Base
load_and_authorize_resource
	def show
		@ressonancias=Ressonancia.find_by_atendimento_id(params[:atendimento])
	end
	
	def new
		@ressonancia=Ressonancia.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@ressonancia.atendimento=@atendimento
	end
	

	def create
	 	@ressonancia = Ressonancia.new(params[:ressonancia])
	    respond_to do |format|
	      if @ressonancia.save
			format.html {redirect_to @ressonancia}
	      	format.js 
	      else
	        
	        format.js
	      end
	    end
	end

	def edit
		@ressonancia = Ressonancia.find(params[:id])
		#@ressonancia=Ressonancia.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@ressonancia = Ressonancia.find(params[:id])
		@ressonancia.update_attributes(params[:ressonancia])
		respond_to do |format|
			if @ressonancia.update_attributes(params[:ressonancia])
	      		format.html {redirect_to @ressonancia}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end

	end
end
