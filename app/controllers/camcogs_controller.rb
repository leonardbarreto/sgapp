class CamcogsController < InheritedResources::Base
load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@camcogs=Camcog.find_by_atendimento_id(params[:atendimento])
	end
	def new
		@camcog=Camcog.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@camcog.atendimento=@atendimento
	end

	def create
		@camcog=Camcog.new(params[:camcog])
		respond_to do |format|
	      if @camcog.save
	       	format.html {redirect_to @camcog}
	      	format.js 
	      else
	        format.js
	      end
	    end
	end

	def edit
		@camcog = Camcog.find(params[:id])
		#@meem=Meem.find_by_atendimento_id(params[:atendimento])
	end

	def update
		@camcog = Camcog.find(params[:id])
		@camcog.update_attributes(params[:camcog])
		respond_to do |format|
			if @camcog.update_attributes(params[:camcog])
	      		format.html {redirect_to @camcog}
	      		format.js 
	      	else
	      		format.js
	      	end
	    end
	end
end
