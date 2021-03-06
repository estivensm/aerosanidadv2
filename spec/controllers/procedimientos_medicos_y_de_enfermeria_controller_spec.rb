require 'rails_helper'

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

RSpec.describe ProcedimientosMedicosYDeEnfermeriaController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProcedimientoMedicoYDeEnfermeria. As you add validations to ProcedimientoMedicoYDeEnfermeria, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProcedimientosMedicosYDeEnfermeriaController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all procedimientos_medicos_y_de_enfermeria as @procedimientos_medicos_y_de_enfermeria" do
      procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:procedimientos_medicos_y_de_enfermeria)).to eq([procedimiento_medico_y_de_enfermeria])
    end
  end

  describe "GET #show" do
    it "assigns the requested procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
      procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
      get :show, {:id => procedimiento_medico_y_de_enfermeria.to_param}, valid_session
      expect(assigns(:procedimiento_medico_y_de_enfermeria)).to eq(procedimiento_medico_y_de_enfermeria)
    end
  end

  describe "GET #new" do
    it "assigns a new procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
      get :new, {}, valid_session
      expect(assigns(:procedimiento_medico_y_de_enfermeria)).to be_a_new(ProcedimientoMedicoYDeEnfermeria)
    end
  end

  describe "GET #edit" do
    it "assigns the requested procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
      procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
      get :edit, {:id => procedimiento_medico_y_de_enfermeria.to_param}, valid_session
      expect(assigns(:procedimiento_medico_y_de_enfermeria)).to eq(procedimiento_medico_y_de_enfermeria)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProcedimientoMedicoYDeEnfermeria" do
        expect {
          post :create, {:procedimiento_medico_y_de_enfermeria => valid_attributes}, valid_session
        }.to change(ProcedimientoMedicoYDeEnfermeria, :count).by(1)
      end

      it "assigns a newly created procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
        post :create, {:procedimiento_medico_y_de_enfermeria => valid_attributes}, valid_session
        expect(assigns(:procedimiento_medico_y_de_enfermeria)).to be_a(ProcedimientoMedicoYDeEnfermeria)
        expect(assigns(:procedimiento_medico_y_de_enfermeria)).to be_persisted
      end

      it "redirects to the created procedimiento_medico_y_de_enfermeria" do
        post :create, {:procedimiento_medico_y_de_enfermeria => valid_attributes}, valid_session
        expect(response).to redirect_to(ProcedimientoMedicoYDeEnfermeria.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
        post :create, {:procedimiento_medico_y_de_enfermeria => invalid_attributes}, valid_session
        expect(assigns(:procedimiento_medico_y_de_enfermeria)).to be_a_new(ProcedimientoMedicoYDeEnfermeria)
      end

      it "re-renders the 'new' template" do
        post :create, {:procedimiento_medico_y_de_enfermeria => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested procedimiento_medico_y_de_enfermeria" do
        procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
        put :update, {:id => procedimiento_medico_y_de_enfermeria.to_param, :procedimiento_medico_y_de_enfermeria => new_attributes}, valid_session
        procedimiento_medico_y_de_enfermeria.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
        procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
        put :update, {:id => procedimiento_medico_y_de_enfermeria.to_param, :procedimiento_medico_y_de_enfermeria => valid_attributes}, valid_session
        expect(assigns(:procedimiento_medico_y_de_enfermeria)).to eq(procedimiento_medico_y_de_enfermeria)
      end

      it "redirects to the procedimiento_medico_y_de_enfermeria" do
        procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
        put :update, {:id => procedimiento_medico_y_de_enfermeria.to_param, :procedimiento_medico_y_de_enfermeria => valid_attributes}, valid_session
        expect(response).to redirect_to(procedimiento_medico_y_de_enfermeria)
      end
    end

    context "with invalid params" do
      it "assigns the procedimiento_medico_y_de_enfermeria as @procedimiento_medico_y_de_enfermeria" do
        procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
        put :update, {:id => procedimiento_medico_y_de_enfermeria.to_param, :procedimiento_medico_y_de_enfermeria => invalid_attributes}, valid_session
        expect(assigns(:procedimiento_medico_y_de_enfermeria)).to eq(procedimiento_medico_y_de_enfermeria)
      end

      it "re-renders the 'edit' template" do
        procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
        put :update, {:id => procedimiento_medico_y_de_enfermeria.to_param, :procedimiento_medico_y_de_enfermeria => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested procedimiento_medico_y_de_enfermeria" do
      procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
      expect {
        delete :destroy, {:id => procedimiento_medico_y_de_enfermeria.to_param}, valid_session
      }.to change(ProcedimientoMedicoYDeEnfermeria, :count).by(-1)
    end

    it "redirects to the procedimientos_medicos_y_de_enfermeria list" do
      procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.create! valid_attributes
      delete :destroy, {:id => procedimiento_medico_y_de_enfermeria.to_param}, valid_session
      expect(response).to redirect_to(procedimientos_medicos_y_de_enfermeria_url)
    end
  end

end
