class PlayerImagesController < ApplicationController
  before_filter :get_player
  before_filter :return_to

  def return_to
    session[:return_to] ||= request.referer
  end

  def show
    @player_image = PlayerImage.find(params[:id])
  end

  def get_player
    @team_player = TeamPlayer.find(params[:team_player_id])
  end

  def index
    @player_images = @team.player_images
  end

  def new
    @player_image = PlayerImage.new
  end

  def create
    @player_image = PlayerImage.create(player_image_params)

    if @player_image.save
      flash[:success] = "The image has been uploaded."
      redirect_to team_path(@team_player.team)
    else
      render "new"
    end
  end

  def destroy
    @player_image = PlayerImage.find(params[:id])
    @player_image.destroy
    flash[:success] = "The image has been deleted."
    redirect_to team_path(@team)
  end

  private
  def player_image_params
    params.require(:player_image).permit(:team_player_id, :image)
  end
end
