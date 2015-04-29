class GdsController < InheritedResources::Base
load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@gds=Gd.find_by_atendimento_id(params[:atendimento])
	end
	def new
		@gd=Gd.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@gd.atendimento=@atendimento
	end

	def create
		@gd=Gd.new(params[:gd])
		respond_to do |format|
	      if @gd.save
	       	format.html {redirect_to @gd}
	      	format.js 
	      else
	        format.js 
	      end
	    end
	end

	def edit
		@gd = Gd.find(params[:id])
		#@meem=Meem.find_by_atendimento_id(params[:atendimento])
	end

	def update
		@gd = Gd.find(params[:id])
		@gd.update_attributes(params[:gd])
		respond_to do |format|
			if @gd.update_attributes(params[:gd])
	      		format.html {redirect_to @gd}
	      		format.js 
	      	else
	      		format.js
	      	end
	    end
	end
end
