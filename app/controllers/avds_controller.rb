class AvdsController < InheritedResources::Base
	load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@avds=Avd.find_by_atendimento_id(params[:atendimento])
	end
	def new
		@avd=Avd.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@avd.atendimento=@atendimento
	end

	def create
		@avd=Avd.new(params[:avd])
		respond_to do |format|
	      if @avd.save
	       	format.html {redirect_to @avd}
	      	format.js 
	      else
	        format.js
	      end
	    end
	end

	def edit
		@avd = Avd.find(params[:id])
		#@meem=Meem.find_by_atendimento_id(params[:atendimento])
	end

	def update
		@avd = Avd.find(params[:id])
		@avd.update_attributes(params[:avd])
		respond_to do |format|
			if @avd.update_attributes(params[:avd])
	      		format.html {redirect_to @avd}
	      		format.js 
	      	else
	      		format.js
	      	end
	    end
	end
end
