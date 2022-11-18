class TrackVersionController < ApplicationController
  before_action :set_track_version, only: %i[show edit update destroy]
  def index
    @track_versions = TrackVersion.all
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @track_versions}
    end
  end
  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @track_version}
    end
  end
  def new
    @track_version = TrackVersion.new
  end
  def edit; end
  def create
    @track_version = TrackVersion.new(track_version_params)
    respond_to do |format|
      if @track_version.save
        format.html { redirect_to track_version_url(@track_version)}
        format.json { render :show, status: :created, location: @track_version }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @track_version.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @track_version.update(track_version_params)
        format.html { redirect_to track_version_url(@track_version) }
        format.json { render :show, status: :ok, location: @track_version }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @track_version.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @track_version.destroy
    respond_to do |format|
      format.html { redirect_to track_versions_url }
      format.json { head :no_content }
    end
  end

  private

  def set_track_version
    @track_version = TrackVersion.find(params.id)
  end
  def track_version_params
    params.require(:track_version).permit()
  end
end
