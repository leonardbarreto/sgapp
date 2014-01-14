require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TipoAtendimentosController do

  # This should return the minimal set of attributes required to create a valid
  # TipoAtendimento. As you add validations to TipoAtendimento, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TipoAtendimentosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all tipo_atendimentos as @tipo_atendimentos" do
      tipo_atendimento = TipoAtendimento.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tipo_atendimentos).should eq([tipo_atendimento])
    end
  end

  describe "GET show" do
    it "assigns the requested tipo_atendimento as @tipo_atendimento" do
      tipo_atendimento = TipoAtendimento.create! valid_attributes
      get :show, {:id => tipo_atendimento.to_param}, valid_session
      assigns(:tipo_atendimento).should eq(tipo_atendimento)
    end
  end

  describe "GET new" do
    it "assigns a new tipo_atendimento as @tipo_atendimento" do
      get :new, {}, valid_session
      assigns(:tipo_atendimento).should be_a_new(TipoAtendimento)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipo_atendimento as @tipo_atendimento" do
      tipo_atendimento = TipoAtendimento.create! valid_attributes
      get :edit, {:id => tipo_atendimento.to_param}, valid_session
      assigns(:tipo_atendimento).should eq(tipo_atendimento)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TipoAtendimento" do
        expect {
          post :create, {:tipo_atendimento => valid_attributes}, valid_session
        }.to change(TipoAtendimento, :count).by(1)
      end

      it "assigns a newly created tipo_atendimento as @tipo_atendimento" do
        post :create, {:tipo_atendimento => valid_attributes}, valid_session
        assigns(:tipo_atendimento).should be_a(TipoAtendimento)
        assigns(:tipo_atendimento).should be_persisted
      end

      it "redirects to the created tipo_atendimento" do
        post :create, {:tipo_atendimento => valid_attributes}, valid_session
        response.should redirect_to(TipoAtendimento.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipo_atendimento as @tipo_atendimento" do
        # Trigger the behavior that occurs when invalid params are submitted
        TipoAtendimento.any_instance.stub(:save).and_return(false)
        post :create, {:tipo_atendimento => {}}, valid_session
        assigns(:tipo_atendimento).should be_a_new(TipoAtendimento)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TipoAtendimento.any_instance.stub(:save).and_return(false)
        post :create, {:tipo_atendimento => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tipo_atendimento" do
        tipo_atendimento = TipoAtendimento.create! valid_attributes
        # Assuming there are no other tipo_atendimentos in the database, this
        # specifies that the TipoAtendimento created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TipoAtendimento.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => tipo_atendimento.to_param, :tipo_atendimento => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested tipo_atendimento as @tipo_atendimento" do
        tipo_atendimento = TipoAtendimento.create! valid_attributes
        put :update, {:id => tipo_atendimento.to_param, :tipo_atendimento => valid_attributes}, valid_session
        assigns(:tipo_atendimento).should eq(tipo_atendimento)
      end

      it "redirects to the tipo_atendimento" do
        tipo_atendimento = TipoAtendimento.create! valid_attributes
        put :update, {:id => tipo_atendimento.to_param, :tipo_atendimento => valid_attributes}, valid_session
        response.should redirect_to(tipo_atendimento)
      end
    end

    describe "with invalid params" do
      it "assigns the tipo_atendimento as @tipo_atendimento" do
        tipo_atendimento = TipoAtendimento.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TipoAtendimento.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipo_atendimento.to_param, :tipo_atendimento => {}}, valid_session
        assigns(:tipo_atendimento).should eq(tipo_atendimento)
      end

      it "re-renders the 'edit' template" do
        tipo_atendimento = TipoAtendimento.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TipoAtendimento.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipo_atendimento.to_param, :tipo_atendimento => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tipo_atendimento" do
      tipo_atendimento = TipoAtendimento.create! valid_attributes
      expect {
        delete :destroy, {:id => tipo_atendimento.to_param}, valid_session
      }.to change(TipoAtendimento, :count).by(-1)
    end

    it "redirects to the tipo_atendimentos list" do
      tipo_atendimento = TipoAtendimento.create! valid_attributes
      delete :destroy, {:id => tipo_atendimento.to_param}, valid_session
      response.should redirect_to(tipo_atendimentos_url)
    end
  end

end