class TeamController < ApplicationController

    def profile
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
