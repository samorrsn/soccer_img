class TeamImagesController < ApplicationController
  before_filter :get_team
  before_filter :return_to

  def return_to
    session[:return_to] ||= request.referer
  end

  def show
    @team_image = TeamImage.find(params[:id])
  end

  def get_team
    @team = Team.find(params[:team_id])
  end

  def index
    @team_images = @team.team_images
  end

  def new
    @team_image = TeamImage.new
  end

  def create
    @team_image = @team.team_images.create(team_image_params)

    if @team_image.save
      flash[:success] = "The image has been uploaded."
      redirect_to team_team_images_path(@team)
    else
      render "new"
    end
  end

  def destroy
    @team_image = TeamImage.find(params[:id])
    @team_image.destroy
    flash[:success] = "The image has been deleted."
    redirect_to team_team_images_path(@team)
  end

  private
  def team_image_params
    params.require(:team_image).permit(:team_id, :image)
  end
end
