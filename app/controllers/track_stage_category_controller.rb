class TrackStageCategoryController < ApplicationController


  private

  def set_project
    @track_stage_category = TrackStageCategory.find(params.id)
  end
  def track_stage_category_params
    params.require(:track_stage_category).permit(:name, :category_sequence)
  end
end
