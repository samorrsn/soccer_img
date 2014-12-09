class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_filter :get_team
  before_filter :return_to

  def return_to
    session[:return_to] ||= request.referer
  end

  # GET /events
  # GET /events.json
  def index
    if(params[:team_id])
      @events = Team.find(params[:team_id]).events.where('starts_at > ? AND starts_at < ?', params[:start], params[:end])
    else
      @events = Event.where('starts_at > ? AND starts_at < ?', params[:start], params[:end])
    end
    respond_to do |format|
      format.html # index.html.erb
      #format.js
      format.json { render :json => @events }
    end
  end

  def get_team
    if params[:team_id]
      @team = Team.find(params[:team_id])
    end
  end


  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      #format.js # show.js.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new

    @event = Event.new

  end

  # GET /events/1/edit
  def edit
    @event = @team.events.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    if params[:team_id]

      @event = @team.events.create(event_params)
    else
      @event = Event.create(params[:event])
    end

    if @event.save
      flash[:success] = 'Event was successfully created.'
      redirect_to session.delete(:return_to)
    else
      format.html { render :action => "new" }
      format.json { render :json => @event.errors, :status => :unprocessable_entity }
    end

  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = @team.events.find_by_id(params[:id])

    respond_to do |format|
      if @event.update_attributes(event_params)
        flash[:success] = 'Event was successfully updated.'
        format.html { redirect_to session.delete(:return_to)}
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    flash[:success] = 'Event was deleted.'
    redirect_to session.delete(:return_to)
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :starts_at, :ends_at, :all_day, :description, :team_id, :event_type)
  end
end
