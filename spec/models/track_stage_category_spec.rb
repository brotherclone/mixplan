require 'rails_helper'

RSpec.describe TrackStageCategory, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_stage_category)).to be_valid
  end
  it 'has many track stages' do
    should have_many(:track_stages)
  end
end