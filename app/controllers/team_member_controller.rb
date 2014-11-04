class TeamMemberController < ApplicationController
  def new
  end

  def profile
      @teamMember = TeamMember.find(params[:id])
  end

  def edit
  end
end
