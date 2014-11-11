class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  # GET /positions
  def index
    @positions = Position.all
  end

  # GET /positions/1
  def show
  end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions
  def create
    if params[:position].has_key?(:team_id)
      #@position = Position.find_or_create_by_title(params[:position][:title])
      @team = Team.find_by_id(params[:position][:team_id])
      @team.positions.create(title: params[:position][:title])
      redirect_to :back, notice: "Position successfully created!"
    else
      @position = Position.new(position_params)

      if @position.save
        @team = params[:position][:team_id]
        @team.positions.create(Position.find_by_id(@position.id))
        redirect_to @position, notice: 'Position was successfully created.'
      else
        render action: 'new'
      end
    end
  end

  # PATCH/PUT /positions/1
  def update
    if @position.update(position_params)
      redirect_to @position, notice: 'Position was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /positions/1
  def destroy
    @position.destroy
    redirect_to positions_url, notice: 'Position was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_position
    @position = Position.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def position_params
    params.require(:position).permit(:title)
  end
end
