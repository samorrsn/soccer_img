class TeamController < ApplicationController

    def profile
        @team = Team.find(params[:id])
        @team_members = TeamMember.where(team_id: params[:id]).order('created_at DESC')
        # @team_members.each do 
    end

    def schedule
    end

    def players
    end

    def positions
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @team.save
                @position = Position.new(title:'Goalie')
            end
        end
    end
end
