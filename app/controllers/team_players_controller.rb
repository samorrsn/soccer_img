class TeamPlayersController < ApplicationController
  before_action :set_team_player, only: [:show, :edit, :update, :destroy]
  before_filter :get_team
  # GET /team_players
  def index
    @team_players = TeamPlayer.all
  end

  def get_team
    @team = Team.find(params[:team_id])
  end

  # GET /team_players/1
  def show
  end

  # GET /team_players/new
  def new
    @team_player = TeamPlayer.new
  end

  # GET /team_players/1/edit
  def edit
    session[:return_to] ||= request.referer
  end

  # POST /team_players
  def create
    @team_player = TeamPlayer.new(team_player_params)

    if @team_player.save
      redirect_to @team_player, notice: 'Team player was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /team_players/1
  def update
    if @team_player.update(team_player_params)
      redirect_to session.delete(:return_to)
    else
      render action: 'edit'
    end
  end

  # DELETE /team_players/1
  def destroy
    @team_player.destroy
    redirect_to team_players_url, notice: 'Team player was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_team_player
    @team_player = TeamPlayer.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
 def team_player_params
    params.require(:team_player).permit(:member_first_name, :positions, :team_id, :position_ids => [])
  end
end
