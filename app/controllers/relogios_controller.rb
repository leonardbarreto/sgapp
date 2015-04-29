class RelogiosController < InheritedResources::Base
load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@gds=Relogio.find_by_atendimento_id(params[:atendimento])
	end
	def new
		@relogio=Relogio.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@relogio.atendimento=@atendimento
	end

	def create
		@relogio=Relogio.new(params[:relogio])
		respond_to do |format|
	      if @relogio.save
	       	format.html {redirect_to @relogio}
	      	format.js 
	      else
	        format.js
	      end
	    end
	end

	def edit
		@relogio = Relogio.find(params[:id])
		#@meem=Meem.find_by_atendimento_id(params[:atendimento])
	end

	def update
		@relogio = Relogio.find(params[:id])
		@relogio.update_attributes(params[:relogio])
		respond_to do |format|
			if @relogio.update_attributes(params[:relogio])
	      		format.html {redirect_to @relogio}
	      		format.js 
	      	else
	      		format.js
	      	end
	    end
	end
end
