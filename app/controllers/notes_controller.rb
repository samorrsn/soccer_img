class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_filter :get_team_player
  before_filter :return_to

  def return_to
    session[:return_to] ||= request.referer
  end

  def get_team_player
    @team_player = TeamPlayer.find(params[:team_player_id])
  end
  # GET /notes
  def index
    @notes = Note.all
  end

  # GET /notes/1
  def show
    @notes = @team_member.notes
  end

  # GET /notes/new
  def new
    session[:return_to] ||= request.referer
    @team_coach_id = params[:team_coach_id]
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  def create
    @note = @team_player.notes.create(note_params)

    if @note.save
      flash[:success] = 'Note was successfully created.'
      redirect_to session.delete(:return_to)
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /notes/1
  def update

    respond_to do |format|
      if @note.update(note_params)
        format.html
        format.json { respond_with_bip(@note) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@note) }
      end
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
    flash[:success] = 'Not was successfully deleted.'
    redirect_to session.delete(:return_to)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def note_params
    params.require(:note).permit(:note_text, :team_player_id)
  end
end
