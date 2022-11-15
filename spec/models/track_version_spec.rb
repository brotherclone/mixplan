require 'rails_helper'

RSpec.describe TrackVersion, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_version)).to be_valid
  end
  it 'should belong to a track' do
    should belong_to(:track)
  end
  it 'has one audio file' do
    should have_one(:audio_file)
  end
  it 'has have many track issues' do
    should have_many(:track_issues)
  end
end