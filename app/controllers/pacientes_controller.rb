class PacientesController < InheritedResources::Base
load_and_authorize_resource 
# GET /pacientes
  # GET /pacientes.json
 
  def index
    #@pacientes = Paciente.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 5, :page => params[:page])  
    #@pacientes = Paciente.joins(:pessoa).search(params[:search]).paginate(:per_page => 7, :page => params[:page]).order('nome')  
    @pacientes = Paciente.joins(:pessoa).search(params[:search]).paginate(:per_page => 5, :page => params[:page]).order(params[:sort])  
    #@pacientes = Paciente.all
    #@pacientes = Paciente.paginate(:page=>params[:page],:per_page=>10).order('nome')
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @pacientes }
    #end
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
    @paciente = Paciente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paciente }
    end
  end

  # GET /pacientes/new
  # GET /pacientes/new.json
  def new
    @paciente = Paciente.new
    @paciente.pessoa = Pessoa.new
    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @paciente }
    #end
  end

  # GET /pacientes/1/edit
  def edit
    @paciente = Paciente.find(params[:id])
  end
    # GET /pacientes/1/edit
  def prontuario
    @paciente = Paciente.find(params[:id])
    @atendimentos = Atendimento.find(:all,:conditions=>{:paciente_id=>@paciente},:order=>:data_at)
    
    #@atendimentos=Atendimento.find_by_paciente_id(@paciente,:order=>:data_at)
    respond_to do |format|
      format.html # show.html.erb
      format.js {head :ok}
    end
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(params[:paciente])
    
    respond_to do |format|
      if @paciente.save
        format.html { redirect_to pacientes_path, notice: 'Paciente criado com sucesso.' }
        format.json { render json: @paciente, status: :created, location: @paciente }
      else
        format.html { render action: "new" }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pacientes/1
  # PUT /pacientes/1.json
  def update
    @paciente = Paciente.find(params[:id])
    #verificar se existe atendimento cadastrado para o paciente
    #@atendimentos=Atendimento.find_all_by_paciente_id(params[:paciente_id])
    #if @atendimentos.empty?
    #  @atendimento=Atendimento.new()
    #  @atendimento.paciente_id=@paciente.id
    #  @atendimento.save
    #else
    #  @atendimento.update_attributes(params[:paciente_id])
    #end
    respond_to do |format|
      if @paciente.update_attributes(params[:paciente]) 
        format.html { redirect_to pacientes_path, notice: 'Paciente atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy

    respond_to do |format|
      format.html { redirect_to pacientes_url }
      format.json { head :no_content }
    end
  end
end
