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
    @team_players = @team.team_players
    @team_positions = @team.positions
    @player_position = PlayerPosition.new
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
    @positions = @team.team_positions
    @position = Position.new
  end

  def profile
    @team = Team.find(params[:id])
    @team_players = @team.team_members
    # TODO: Fix this to get correct coach
    @coach = TeamMember.find_by(team_id: params[:id], type: "TeamCoach")
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

    # TODO: Move this from the controller
    @events = []
    @team.team_member_availabilities.each do |e|
      evt = Hash.new
      evt[:title] = e.team_member.full_name
      evt[:start] = e.from.to_s(:db).split(" ").first
      @events << evt
    end
    @availability_events = @events.to_json
    @team_member_availability = TeamMemberAvailability.new
  end

  def players
    @team = Team.find(params[:id])
    @team_members = @team.team_members
  end

  def positions
    @team = Team.find(params[:id])
    @positions = @team.team_positions
    @position = Position.new
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

  def player_stats
    @team = Team.find(params[:id])
  end

  # PATCH/PUT /teams/1
  def update
    if params[:commit] == 'Add New Position'
      #@position = Position.find_or_create_by_title(params[:position][:title])
      @team = Team.find_by_id(params[:position][:team_id])
      @team.positions.create(title: params[:position][:title])
      redirect_to :back, notice: "Position successfully created!"
    else
      if @team.update(team_params)
        redirect_to :back, notice: 'Team was successfully updated.'
      else
        render action: 'edit'
      end
    end
  end

  # DELETE /teams/1
  def destroy
    if params.has_key?(:team_position)
      TeamPosition.find_by_id(params[:team_position]).destroy
      redirect_to :back, notice: "Position successfully deleted!"
    else
      @team.destroy
      redirect_to teams_url, notice: 'Team was successfully destroyed.'
    end
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
