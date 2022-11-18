require 'rails_helper'

RSpec.describe TrackStageCategory, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_stage_category)).to be_valid
  end
  it 'has many track stages' do
    should have_many(:track_stages)
  end
  it 'is invalid without a category sequence' do
    expect(build(:track_stage_category, category_sequence: nil)).to_not be_valid
  end
  it 'is invalid without a category name' do
    expect(build(:track_stage_category, name: nil)).to_not be_valid
  end
end