class MeemController < ApplicationController
	def show
		@meem=Meems.find_by_atendimento_id(params[:id],:order=>:data_at)
	end
end
