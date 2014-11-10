class PlayerPositionsController < ApplicationController
  before_action :set_player_position, only: [:update, :destroy]

  def new
  	@player_position=PlayerPosition.new
  end

  def create
  	@player_position=PlayerPosition.new(player_position_params)
  	if @player_position.save
  		redirect_to :back, notice: "Position successfully created!"
  	else
  		redirect_to :back, notice: "Position could not be added at this time. :("
    end
  end

  def update
  	if @player_position.update(player_position_params)
  		redirect_to :back, notice: "Position successfully updated!"
  	else
  		redirect_to :back, notice: "Position could not be updated at this time. :("
    end
  end

  def destroy
  	@player_position.destroy
  	redirect_to :back, notice: "Position successfully deleted."
  end

  private
  	def set_player_position
  		@player_position=PlayerPosition.find(params[:id])
  	end

  	def player_position_params
  		params.require(:player_position).permit(:title, :position_id, :team_member_id)
  	end 
end

