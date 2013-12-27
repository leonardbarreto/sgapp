class PessoasController < InheritedResources::Base
def index
	@pessoas=Pessoa.all
end
def show
	@pessoa=Pessoa.find(params[:id])
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pessoa }
    end
end
end
