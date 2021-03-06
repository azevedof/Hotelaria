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

describe ConsumosController do

  # This should return the minimal set of attributes required to create a valid
  # Consumo. As you add validations to Consumo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "descricao" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ConsumosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all consumos as @consumos" do
      consumo = Consumo.create! valid_attributes
      get :index, {}, valid_session
      assigns(:consumos).should eq([consumo])
    end
  end

  describe "GET show" do
    it "assigns the requested consumo as @consumo" do
      consumo = Consumo.create! valid_attributes
      get :show, {:id => consumo.to_param}, valid_session
      assigns(:consumo).should eq(consumo)
    end
  end

  describe "GET new" do
    it "assigns a new consumo as @consumo" do
      get :new, {}, valid_session
      assigns(:consumo).should be_a_new(Consumo)
    end
  end

  describe "GET edit" do
    it "assigns the requested consumo as @consumo" do
      consumo = Consumo.create! valid_attributes
      get :edit, {:id => consumo.to_param}, valid_session
      assigns(:consumo).should eq(consumo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Consumo" do
        expect {
          post :create, {:consumo => valid_attributes}, valid_session
        }.to change(Consumo, :count).by(1)
      end

      it "assigns a newly created consumo as @consumo" do
        post :create, {:consumo => valid_attributes}, valid_session
        assigns(:consumo).should be_a(Consumo)
        assigns(:consumo).should be_persisted
      end

      it "redirects to the created consumo" do
        post :create, {:consumo => valid_attributes}, valid_session
        response.should redirect_to(Consumo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved consumo as @consumo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Consumo.any_instance.stub(:save).and_return(false)
        post :create, {:consumo => { "descricao" => "invalid value" }}, valid_session
        assigns(:consumo).should be_a_new(Consumo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Consumo.any_instance.stub(:save).and_return(false)
        post :create, {:consumo => { "descricao" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested consumo" do
        consumo = Consumo.create! valid_attributes
        # Assuming there are no other consumos in the database, this
        # specifies that the Consumo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Consumo.any_instance.should_receive(:update).with({ "descricao" => "MyString" })
        put :update, {:id => consumo.to_param, :consumo => { "descricao" => "MyString" }}, valid_session
      end

      it "assigns the requested consumo as @consumo" do
        consumo = Consumo.create! valid_attributes
        put :update, {:id => consumo.to_param, :consumo => valid_attributes}, valid_session
        assigns(:consumo).should eq(consumo)
      end

      it "redirects to the consumo" do
        consumo = Consumo.create! valid_attributes
        put :update, {:id => consumo.to_param, :consumo => valid_attributes}, valid_session
        response.should redirect_to(consumo)
      end
    end

    describe "with invalid params" do
      it "assigns the consumo as @consumo" do
        consumo = Consumo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Consumo.any_instance.stub(:save).and_return(false)
        put :update, {:id => consumo.to_param, :consumo => { "descricao" => "invalid value" }}, valid_session
        assigns(:consumo).should eq(consumo)
      end

      it "re-renders the 'edit' template" do
        consumo = Consumo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Consumo.any_instance.stub(:save).and_return(false)
        put :update, {:id => consumo.to_param, :consumo => { "descricao" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested consumo" do
      consumo = Consumo.create! valid_attributes
      expect {
        delete :destroy, {:id => consumo.to_param}, valid_session
      }.to change(Consumo, :count).by(-1)
    end

    it "redirects to the consumos list" do
      consumo = Consumo.create! valid_attributes
      delete :destroy, {:id => consumo.to_param}, valid_session
      response.should redirect_to(consumos_url)
    end
  end

end
