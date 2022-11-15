require 'rails_helper'

RSpec.describe TrackStage, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_stage)).to be_valid
  end
end