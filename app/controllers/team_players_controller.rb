class TeamPlayersController < ApplicationController
  before_action :set_team_player, only: [:show, :edit, :update, :destroy]
  before_filter :get_team, only: [:create, :new, :edit]

  # GET /team_players
  def index
    @team_players = TeamPlayer.all
  end

  def view_notes
    @team_player = TeamPlayer.find(params[:id])
    @notes = @team_player.notes
  end

  def get_team
    @team = Team.find(params[:team_id])
  end

  # GET /team_players/1
  def show
  end

  # GET /team_players/new
  def new
    session[:return_to] ||= request.referer
    @team_player = TeamPlayer.new
  end

  # GET /team_players/1/edit
  def edit
    session[:return_to] ||= request.referer
  end

  # POST /team_players
  def create
    @team_player = @team.team_players.create(team_player_params)

    if @team_player.save
       flash[:success] = 'Team player was successfully created.'
      redirect_to session.delete(:return_to)
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /team_players/1
  def update
    @team_player = TeamPlayer.find(params[:id])
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
    params.require(:team_player).permit(:member_first_name, :member_last_name, :positions, :team_id, :position_ids => [])
  end
end
