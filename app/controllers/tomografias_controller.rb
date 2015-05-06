class TomografiasController < InheritedResources::Base
load_and_authorize_resource
	def show
		@tomografias=Tomografia.find_by_atendimento_id(params[:atendimento])
	end
	
	def new
		@tomografia=Tomografia.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@tomografia.atendimento=@atendimento
	end
	

	def create
	 	@tomografia = Tomografia.new(params[:tomografia])
	    respond_to do |format|
	      if @tomografia.save
			format.html {redirect_to @tomografia}
	      	format.js 
	      else
	        
	        format.js
	      end
	    end
	end

	def edit
		@tomografia = Tomografia.find(params[:id])
		#@tomografia=Tomografia.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@tomografia = Tomografia.find(params[:id])
		@tomografia.update_attributes(params[:tomografia])
		respond_to do |format|
			if @tomografia.update_attributes(params[:tomografia])
	      		format.html {redirect_to @tomografia}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end

	end
end
