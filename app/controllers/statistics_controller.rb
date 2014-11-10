class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show, :edit, :update, :destroy]

  # GET /statistics
  def index
    @statistics = Statistic.all
    @team_players = TeamPlayer.all
  end

  # GET /statistics/1
  def show
  end

  # GET /statistics/new
  def new
    @statistic = Statistic.new
  end

  # GET /statistics/1/edit
  def edit
  end

  # POST /statistics
  def create
    @statistic = Statistic.new(statistic_params)

    if @statistic.save
      redirect_to @statistic, notice: 'Statistic was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /statistics/1
  def update
    if @statistic.update(statistic_params)
      redirect_to @statistic, notice: 'Statistic was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /statistics/1
  def destroy
    @statistic.destroy
    redirect_to statistics_url, notice: 'Statistic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = Statistic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def statistic_params
      params[:statistic]
    end
end
