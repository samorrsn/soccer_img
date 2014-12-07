class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_filter :get_team

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
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html { render :partial => "form" }
      format.js { render :partial => "form" }
    end
  end

  # POST /events
  # POST /events.json
  def create
    if params[:team_id]

      @event = @team.events.create(event_params)
    else
      @event = Event.create(params[:event])
    end
    respond_to do |format|
      if @event.save
        format.html { redirect_to [@team, @event], :notice => 'Event was successfully created.' }
        format.json { render :json => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = @team.events.find_by_id(params[:id])

    respond_to do |format|
      if @event.update_attributes(event_params)
        format.html { redirect_to [@team, @event], :notice => 'Event was successfully updated.' }
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

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :starts_at, :ends_at, :all_day, :description, :team_id, :event_type)
  end
end
