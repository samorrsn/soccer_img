class TeamController < ApplicationController

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
end
