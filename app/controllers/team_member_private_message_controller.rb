class TeamMemberPrivateMessageController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def get_message
    @message = TeamMemberPrivateMessage.find(params[:id])
    respond_to do |format|
    #   format.html { render json: @message }
      format.json { render json: @message }
    end
  end

end
