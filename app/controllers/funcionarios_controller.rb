#class FuncionariosController < ApplicationController
class FuncionariosController < InheritedResources::Base
	load_and_authorize_resource
  def index
		@funcionarios=Funcionario.paginate(:per_page => 5, :page => params[:page]).order(params[:sort]) 
    
	end

  def show
    @funcionario = Funcionario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funcionario }
    end
  end

  # GET /funcionarios/new
  # GET /funcionarios/new.json
  def new
    @funcionario = Funcionario.new
    @funcionario.pessoa = Pessoa.new
    
    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @funcionario }
    #end
  end
 def edit
    @funcionario = Funcionario.find(params[:id])
 end

def create
    @funcionario = Funcionario.new(params[:funcionario])
    
    respond_to do |format|
      if @funcionario.save
        criarAgenda()
        format.html { redirect_to @funcionario, notice: 'Funcionario criado com sucesso.' }
        #format.json { render json: @funcionario, status: :created, location: @funcionario }
        
      else
        format.html { render action: "new" }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

   def update
    @funcionario = Funcionario.find(params[:id])

    respond_to do |format|
      if @funcionario.update_attributes(params[:funcionario])
        format.html { redirect_to @funcionario, notice: 'Funcionario atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

   # DELETE /funcionarios/1
  # DELETE /funcionarios/1.json
  def destroy
    @funcionario = Funcionario.find(params[:id])
    @funcionario.destroy

    respond_to do |format|
      format.html { redirect_to funcionarios_url }
      format.json { head :no_content }
    end
  end
  def criarAgenda()
      (1..6).each do |f|
        ag=AgendaProfissional.new(:dia=>f,:funcionario_id=>@funcionario.id,:hora_ini=>'08:00',:hora_fim=>'17:00',:ativo=>FALSE)
        ag.save
      end
  end

end