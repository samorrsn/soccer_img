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

describe TeamPositionsController do

  # This should return the minimal set of attributes required to create a valid
  # TeamPosition. As you add validations to TeamPosition, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TeamPositionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all team_positions as @team_positions" do
      team_position = TeamPosition.create! valid_attributes
      get :index, {}, valid_session
      assigns(:team_positions).should eq([team_position])
    end
  end

  describe "GET show" do
    it "assigns the requested team_position as @team_position" do
      team_position = TeamPosition.create! valid_attributes
      get :show, {:id => team_position.to_param}, valid_session
      assigns(:team_position).should eq(team_position)
    end
  end

  describe "GET new" do
    it "assigns a new team_position as @team_position" do
      get :new, {}, valid_session
      assigns(:team_position).should be_a_new(TeamPosition)
    end
  end

  describe "GET edit" do
    it "assigns the requested team_position as @team_position" do
      team_position = TeamPosition.create! valid_attributes
      get :edit, {:id => team_position.to_param}, valid_session
      assigns(:team_position).should eq(team_position)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TeamPosition" do
        expect {
          post :create, {:team_position => valid_attributes}, valid_session
        }.to change(TeamPosition, :count).by(1)
      end

      it "assigns a newly created team_position as @team_position" do
        post :create, {:team_position => valid_attributes}, valid_session
        assigns(:team_position).should be_a(TeamPosition)
        assigns(:team_position).should be_persisted
      end

      it "redirects to the created team_position" do
        post :create, {:team_position => valid_attributes}, valid_session
        response.should redirect_to(TeamPosition.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved team_position as @team_position" do
        # Trigger the behavior that occurs when invalid params are submitted
        TeamPosition.any_instance.stub(:save).and_return(false)
        post :create, {:team_position => {  }}, valid_session
        assigns(:team_position).should be_a_new(TeamPosition)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TeamPosition.any_instance.stub(:save).and_return(false)
        post :create, {:team_position => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested team_position" do
        team_position = TeamPosition.create! valid_attributes
        # Assuming there are no other team_positions in the database, this
        # specifies that the TeamPosition created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TeamPosition.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => team_position.to_param, :team_position => { "these" => "params" }}, valid_session
      end

      it "assigns the requested team_position as @team_position" do
        team_position = TeamPosition.create! valid_attributes
        put :update, {:id => team_position.to_param, :team_position => valid_attributes}, valid_session
        assigns(:team_position).should eq(team_position)
      end

      it "redirects to the team_position" do
        team_position = TeamPosition.create! valid_attributes
        put :update, {:id => team_position.to_param, :team_position => valid_attributes}, valid_session
        response.should redirect_to(team_position)
      end
    end

    describe "with invalid params" do
      it "assigns the team_position as @team_position" do
        team_position = TeamPosition.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TeamPosition.any_instance.stub(:save).and_return(false)
        put :update, {:id => team_position.to_param, :team_position => {  }}, valid_session
        assigns(:team_position).should eq(team_position)
      end

      it "re-renders the 'edit' template" do
        team_position = TeamPosition.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TeamPosition.any_instance.stub(:save).and_return(false)
        put :update, {:id => team_position.to_param, :team_position => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested team_position" do
      team_position = TeamPosition.create! valid_attributes
      expect {
        delete :destroy, {:id => team_position.to_param}, valid_session
      }.to change(TeamPosition, :count).by(-1)
    end

    it "redirects to the team_positions list" do
      team_position = TeamPosition.create! valid_attributes
      delete :destroy, {:id => team_position.to_param}, valid_session
      response.should redirect_to(team_positions_url)
    end
  end

end