 class UsersController < ApplicationController
 load_and_authorize_resource
 #actions :new, :create, :show
 def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render :json => @users }
      #format.xml  { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Dados atualizados!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
 
   def create
      @user = User.new(params[:user])
      @user.role = 'admin'
      if @user.save
        redirect_to user_path(@user), notice: "Administrador criado com sucesso!"
      else
        render 'new'
    end
  end
  # DELETE /users
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end

