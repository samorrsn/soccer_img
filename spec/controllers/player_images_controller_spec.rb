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

describe PlayerImagesController do

  # This should return the minimal set of attributes required to create a valid
  # PlayerImage. As you add validations to PlayerImage, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlayerImagesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all player_images as @player_images" do
      player_image = PlayerImage.create! valid_attributes
      get :index, {}, valid_session
      assigns(:player_images).should eq([player_image])
    end
  end

  describe "GET show" do
    it "assigns the requested player_image as @player_image" do
      player_image = PlayerImage.create! valid_attributes
      get :show, {:id => player_image.to_param}, valid_session
      assigns(:player_image).should eq(player_image)
    end
  end

  describe "GET new" do
    it "assigns a new player_image as @player_image" do
      get :new, {}, valid_session
      assigns(:player_image).should be_a_new(PlayerImage)
    end
  end

  describe "GET edit" do
    it "assigns the requested player_image as @player_image" do
      player_image = PlayerImage.create! valid_attributes
      get :edit, {:id => player_image.to_param}, valid_session
      assigns(:player_image).should eq(player_image)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PlayerImage" do
        expect {
          post :create, {:player_image => valid_attributes}, valid_session
        }.to change(PlayerImage, :count).by(1)
      end

      it "assigns a newly created player_image as @player_image" do
        post :create, {:player_image => valid_attributes}, valid_session
        assigns(:player_image).should be_a(PlayerImage)
        assigns(:player_image).should be_persisted
      end

      it "redirects to the created player_image" do
        post :create, {:player_image => valid_attributes}, valid_session
        response.should redirect_to(PlayerImage.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved player_image as @player_image" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerImage.any_instance.stub(:save).and_return(false)
        post :create, {:player_image => {  }}, valid_session
        assigns(:player_image).should be_a_new(PlayerImage)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerImage.any_instance.stub(:save).and_return(false)
        post :create, {:player_image => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested player_image" do
        player_image = PlayerImage.create! valid_attributes
        # Assuming there are no other player_images in the database, this
        # specifies that the PlayerImage created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PlayerImage.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => player_image.to_param, :player_image => { "these" => "params" }}, valid_session
      end

      it "assigns the requested player_image as @player_image" do
        player_image = PlayerImage.create! valid_attributes
        put :update, {:id => player_image.to_param, :player_image => valid_attributes}, valid_session
        assigns(:player_image).should eq(player_image)
      end

      it "redirects to the player_image" do
        player_image = PlayerImage.create! valid_attributes
        put :update, {:id => player_image.to_param, :player_image => valid_attributes}, valid_session
        response.should redirect_to(player_image)
      end
    end

    describe "with invalid params" do
      it "assigns the player_image as @player_image" do
        player_image = PlayerImage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerImage.any_instance.stub(:save).and_return(false)
        put :update, {:id => player_image.to_param, :player_image => {  }}, valid_session
        assigns(:player_image).should eq(player_image)
      end

      it "re-renders the 'edit' template" do
        player_image = PlayerImage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerImage.any_instance.stub(:save).and_return(false)
        put :update, {:id => player_image.to_param, :player_image => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested player_image" do
      player_image = PlayerImage.create! valid_attributes
      expect {
        delete :destroy, {:id => player_image.to_param}, valid_session
      }.to change(PlayerImage, :count).by(-1)
    end

    it "redirects to the player_images list" do
      player_image = PlayerImage.create! valid_attributes
      delete :destroy, {:id => player_image.to_param}, valid_session
      response.should redirect_to(player_images_url)
    end
  end

end
