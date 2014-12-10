class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy, :profile,
      :player_availabilities, :schedule, :players, :member_messages, :events,
      :positions, :player_stats]
  before_action :set_current_team_member, only: [:show, :profile,
      :player_availabilities, :schedule, :players, :member_messages, :events,
      :positions, :player_stats]


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
    @team_players = @team.team_players
    @team_positions = @team.positions
    @player_position = PlayerPosition.new
    @team_images = @team.team_images
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
    @positions = @team.team_positions
    @position = Position.new
  end

  def profile
    @team_players = @team.team_players
    # TODO: Fix this to get correct coach
    @coach = TeamMember.find_by(team_id: params[:id], type: "TeamCoach")
    @notes = @team.notes
    @player_positions_arr = Array.new()
    @test = PlayerPosition.new
    @statistics = Statistic.all
  end

  def player_availabilities
    @team_players = @team.team_players
    @team_member_availability = TeamMemberAvailability.new
  end

  def schedule
    @event = @team.events.new
  end

  def players
    @team_members = @team.team_members
  end

  def member_messages
    @messages = TeamMemberPrivateMessage.find(:all, conditions: {receiver_id: params[:member_id]})
  end

  def events
    @event = Event.new
  end

  def positions
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

  def set_current_team_member
    @current_team_member = TeamMember.where(team_id: params[:id], user_id: current_user.id)
  end

  # Only allow a trusted parameter "white list" through.
  def team_params
    params.require(:team).permit(:name, :mascot)
  end
end
