class AivdsController < InheritedResources::Base
	load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@aivds=Aivd.find_by_atendimento_id(params[:atendimento])
	end
	def new
		@aivd=Aivd.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@aivd.atendimento=@atendimento
	end

	def create
	 	@aivd = Aivd.new(params[:aivd])
	    respond_to do |format|
	      if @aivd.save
			format.html {redirect_to @aivd}
	      	format.js 
	      else
	        format.js
	      end
	    end
	end

	def edit
		@aivd = Aivd.find(params[:id])
		#@meem=Meem.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@aivd = Aivd.find(params[:id])
		@aivd.update_attributes(params[:aivd])
		respond_to do |format|
			if @aivd.update_attributes(params[:aivd])
	      		format.html {redirect_to @aivd}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end

	end
	
end
