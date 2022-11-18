require 'rails_helper'

RSpec.describe TrackStage, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_stage)).to be_valid
  end
  it 'is invalid without a category name' do
    expect(build(:track_stage, name: nil)).to_not be_valid
  end
end