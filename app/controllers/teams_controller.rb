class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    if signed_in?
      @teams = current_user.teams
    else
      @teams = Team.all
    end
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
  end

  def profile
    @team = Team.find(params[:id])
    @team_players = @team.team_members
    @notes = @team.notes
    @player_positions_arr = Array.new()
    @test = PlayerPosition.new
  end

  def player_availabilities
    @team = Team.find(params[:id])
    @team_members = @team.team_members
    @team_member_availability = TeamMemberAvailability.new
  end

  def schedule
    @team = Team.find(params[:id])
    @team_members = @team.team_members
    @team_member_availability = TeamMemberAvailability.new
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
    @team = Team.new(team_params)
    respond_to do |format|
      if @team.save
        @coach = TeamMember.create("team_id"=> @team.id, "user_id"=> current_user.id, "member_first_name"=> current_user.first_name, "member_last_name"=>current_user.last_name, "type" => "TeamCoach")
        format.html { redirect_to teams_path, notice: 'Team was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team }
      else
        format.html { render action: 'new' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
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
    params.require(:team).permit(:name, :mascot)
  end
end
