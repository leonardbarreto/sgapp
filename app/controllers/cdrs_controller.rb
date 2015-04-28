class CdrsController < InheritedResources::Base
load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@cdrs=Cdr.find_by_atendimento_id(params[:atendimento])
	end

	def new
		@cdr=Cdr.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@cdr.atendimento=@atendimento
	end

	def edit
		@cdr = Cdr.find(params[:id])
		#@cdr=Meem.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@cdr = Cdr.find(params[:id])
		@cdr.update_attributes(params[:cdr])
		respond_to do |format|
			if @cdr.update_attributes(params[:cdr])
	      		format.html {redirect_to @cdr}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end
	end

	def create
	 	@cdr = Cdr.new(params[:cdr])
	    respond_to do |format|
	      if @cdr.save
			format.html {redirect_to @cdr}
	      	format.js 
	      else
	     	
	        format.js
	      end
	    end
	end


end
