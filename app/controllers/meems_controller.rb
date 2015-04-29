class MeemsController < ApplicationController
	load_and_authorize_resource
	def show
		#@meems=Meem.find_by_atendimento_id(params[:id],:order=>:data_at)
		@meems=Meem.find_by_atendimento_id(params[:atendimento])
	end

	def new
		@meem=Meem.new
		@atendimento=Atendimento.find_by_id(params[:atendimento])
		@meem.atendimento=@atendimento
	end

	def edit
		@meem = Meem.find(params[:id])
		#@meem=Meem.find_by_atendimento_id(params[:atendimento])
	end
	
	def update
		@meem = Meem.find(params[:id])
		@meem.update_attributes(params[:meem])
		respond_to do |format|
			if @meem.update_attributes(params[:meem])
	      		format.html {redirect_to @meem}
	      		format.js 
	      	else
		   		format.js
	      	end
	    end

	end

	def create
	 	@meem = Meem.new(params[:meem])
	    respond_to do |format|
	      if @meem.save
			format.html {redirect_to @meem}
	      	format.js 
	      else
	        format.js
	      end
	    end
	end


end
