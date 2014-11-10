class TeamMemberAvailabilitiesController < ApplicationController
  before_action :set_team_member_availability, only: [:update, :edit, :destroy]

  def new
    @team_member_availability = TeamMemberAvailability.new
    @team_member = TeamMember.find(params[:team_member_id])
    @team = Team.find(@team_member.team_id)
  end

  def create
    @team_member_availability = TeamMemberAvailability.new(team_member_availability_params)

    # Haven't decided how correctly to finish this
    if @team_member_availability.save
      redirect_to player_availabilities_path(id: @team_member_availability.team_member.team_id), notice: 'Availability was successfully added.'
    else
      redirect_to :back, notice: 'Availability was not added.'
    end
  end

  def update
    # Haven't decided how corectly to finish this
    if @team_member_availability.update(team_member_availability_params)
      redirect_to @team_member, notice: 'Availability was successfully updated.'
    else
      redirect_to @team_member, notice: 'Availability was not updated.'
    end
  end

  def edit
  end

  def destroy
    @team_member_availability.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_member_availability
      @team_member_availability = TeamMemberAvailability.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_member_availability_params
      params.require(:team_member_availability).permit(:team_member_id, :is_available, :date, :from_time, :till_time)
    end
end
