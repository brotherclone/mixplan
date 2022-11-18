class TrackStageController < ApplicationController
  before_action :set_track_stage, only: %i[show edit update destroy]
  def index
    @track_stages = TrackStage.all
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @track_stages}
    end
  end
  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @track_stage}
    end
  end
  def new
    @track_stage = TrackStage.new
  end
  def edit; end
  def create
    @track_stage = TrackStage.new(track_stage_params)
    respond_to do |format|
      if @track_stage.save
        format.html { redirect_to track_stage_url(@track_stage)}
        format.json { render :show, status: :created, location: @track_stage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @track_stage.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @track_stage.update(track_stage_params)
        format.html { redirect_to track_stage_url(@track_stage) }
        format.json { render :show, status: :ok, location: @track_stage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @track_stage.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @track_stage.destroy
    respond_to do |format|
      format.html { redirect_to track_stages_url }
      format.json { head :no_content }
    end
  end

  private

  def set_track_stage
    @track_stage = TrackStage.find(params.id)
  end
  def track_stage_params
    params.require(:track_stage).permit(:name)
  end
end
