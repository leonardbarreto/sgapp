class AtendimentosController < ApplicationController
	load_and_authorize_resource
	
	def index
		@funcionarios=Funcionario.joins(:pessoa).find(:all).map{|f| [f.pessoa.nome, f.id]}
		
		#@date = params[:date] ? Date.parse(params[:date]) : Date.today
		if params[:search]
			@date = params[:date] ? Date.parse(params[:date]) : Date.today
			@atendimentos=Atendimento.search(params[:search]).where(:data_at=>@date).order(:horario)
			@funcionario=Funcionario.find(params[:search])
		else
			@atendimentos=[]

		end

	end

	def edit
		@paciente=@atendimento.paciente
		#Carregar todos os exames realizados no atendimento
		@meem=Meem.find_by_atendimento_id(@atendimento)
		@avd=Avd.find_by_atendimento_id(@atendimento)
		@aivd=Aivd.find_by_atendimento_id(@atendimento)
		@cdr=Cdr.find_by_atendimento_id(@atendimento)
		@gd=Gd.find_by_atendimento_id(@atendimento)
		@relogio=Relogio.find_by_atendimento_id(@atendimento)
		respond_to do |format|
	      format.html # show.html.erb
	      format.js {head :ok}
	    end
	end

	def show
	    @atendimento = Atendimento.find(params[:id])

	    respond_to do |format|
	      format.html # show.html.erb
	      format.js {head :ok}

	    end
  	end
	
	def create
	 	@atendimento = Atendimento.new(params[:atendimento])
	    @atendimento.horario_fim=@atendimento.horario+@atendimento.tipo_atendimento.duracao.minutes
	    respond_to do |format|
	      if @atendimento.save
	        format.html { redirect_to atendimento_path(@atendimento), notice: 'Agendamento realizado com sucesso.' }
	      else
	        format.html { redirect_to new_atendimento_path  }
	      end
	    end
	end
	
	
	def new

		#@funcionarios=Funcionario.joins(:pessoa).find(:all).map{|f| [f.pessoa.nome, f.id]}
		 

		@atendimento=Atendimento.new
		@horarios=Atendimento.where(:data_at=>params[:date],:funcionario_id=>params[:funcionario_id]).order(:horario);
		@agenda=AgendaProfissional.where(:dia=>params[:date].to_date.wday,:funcionario_id=>params[:funcionario_id],:ativo=>true)
		@tipo_atendimentos=TipoAtendimento.order(:descricao)
		@atendimento.data_at=params[:date]
		@atendimento.funcionario_id=params[:funcionario_id]
	end


	def update
    	@atendimento = Atendimento.find(params[:id])
    	@atendimento.user_id=@current_user.id
	    respond_to do |format|
	      if @atendimento.update_attributes(params[:atendimento])
	      	if :funcionario_id
	      		format.html { redirect_to atendimentos_path(:search=>@atendimento.funcionario_id,:date=>Date.today), notice: 'Atendimento atualizado com sucesso.' }
	      	else
	      		format.html { redirect_to atendimentos_path, notice: 'Atendimento atualizado com sucesso.' }
	      	end
	        #format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        #format.json { render json: @atendimento.errors, status: :unprocessable_entity }
	      end
	    end
	  end
	
end

