class CargosController < InheritedResources::Base
load_and_authorize_resource
def index
  @cargos=Cargo.order(params[:sort])
end
def create
    @cargo = Cargo.new(params[:cargo])
    
    respond_to do |format|
      if @cargo.save
        format.html { redirect_to @cargo, notice: 'Cargo criado com sucesso.' }
        format.json { render json: @cargo, status: :created, location: @cargo }
      else
        format.html { render action: "new" }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @cargo = Cargo.find(params[:id])

    respond_to do |format|
      if @cargo.update_attributes(params[:cargo])
        format.html { redirect_to @cargo, notice: 'Cargo atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end
end
