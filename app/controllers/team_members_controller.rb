class TeamMembersController < ApplicationController
  before_action :set_team_member, only: [:show, :edit, :update, :destroy]
  before_filter :get_team, except: :view_notes
  # GET /team_members

  def get_team
    @team = Team.find(params[:team_id])
  end

  def view_notes
    @team_member = TeamMember.find(params[:id])
    @team_player = @team_member
    @notes = @team_member.notes
  end

  def index
    @team_members = TeamMember.all
  end

  # GET /team_members/1
  def show
  end

  # GET /team_members/new
  def new
    @team_member = TeamMember.new
    @team_adding_id = params[:team_id]
  end

  # GET /team_members/1/edit
  def edit
    @team_member = TeamMember.find(params[:id])
    # @notes = Note.find_by_player_id(@team_member)
    @user_id = @team_member.user_id
    @team_id = @team_member.team_id
  end


  # POST /team_members
  def create
    @team_member = @team.team_members.create(team_member_params)

    if @team_member.save
      # redirect_to @team_member, notice: 'Team member was successfully created.'
      flash[:success] = 'Team member was successfully created.'
      redirect_to @team
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /team_members/1
  def update
    @team_member.attributes = {'position_ids' => []}.merge(params[:team_member] || {})
    if @team_member.update(team_member_params)
      redirect_to @team_member, notice: 'Team member was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /team_members/1
  def destroy
    @team_member.destroy
    redirect_to team_members_url, notice: 'Team member was successfully destroyed.'
  end

  def note
    @team_member = TeamMember.find(params[:id])
    @notes = @team_member.notes
  end

  def add_user
    # TODO: Add error checking to this code and fix the redirects
    @team_member = TeamMember.find(params[:team_member][:code])
    @team_member.user_id = current_user.id
    if @team_member.update(team_member_params)
      redirect_to root_path, notice: 'Team member was successfully updated.'
    else
      redirect_to :Back, notice: 'Team member was not successfully updated.'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_team_member
    @team_member = TeamMember.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def team_member_params
    params.require(:team_member).permit(:user_id, :team_id, :member_first_name, :member_last_name, :notes)
  end

end
