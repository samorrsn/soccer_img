class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all
  end

  # GET /teams/1
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  def profile
    @team = Team.find(params[:id])
    @team_members = @team.team_members
  end

  def player_availabilities
    @team = Team.find(params[:id])
    @team_members = @team.team_members
  end

  def schedule
    @team = Team.find(params[:id])
    @team_members = @team.team_members
  end

  def players
    @team = Team.find(params[:id])
    @team_members = @team.team_members
  end

  def positions
    @team = Team.find(params[:id])
    @team_members = @team.team_members
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @team.save
        @position = Position.new(title:'Goalie')
      end
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      redirect_to @team, notice: 'Team was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
    redirect_to teams_url, notice: 'Team was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def team_params
    params[:team]
  end
end
