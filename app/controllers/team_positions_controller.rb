class TeamPositionsController < ApplicationController
  before_action :set_team_position, only: [:show, :edit, :update, :destroy]

  # GET /team_positions
  def index
    @team_positions = TeamPosition.all
  end

  # GET /team_positions/1
  def show
  end

  # GET /team_positions/new
  def new
    @team_position = TeamPosition.new
  end

  # GET /team_positions/1/edit
  def edit
  end

  def delete
    @team_position = TeamPosition.find(params[:id])
    @team_position.destroy
  end


  # POST /team_positions
  def create
    @team_position = TeamPosition.new(team_position_params)

    if @team_position.save
      redirect_to @team_position, notice: 'Team position was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /team_positions/1
  def update
    if @team_position.update(team_position_params)
      redirect_to @team_position, notice: 'Team position was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /team_positions/1
  def destroy
    TeamPosition.find(params[:id]).destroy
    redirect_to :back, notice: "Position successfully removed!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_position
      @team_position = TeamPosition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_position_params
      params[:team_position]
    end
end
