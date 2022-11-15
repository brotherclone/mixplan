require 'rails_helper'

RSpec.describe AudioFile, type: :model do
  it 'has a valid Factory' do
    expect(build(:audio_file)).to be_valid
  end
  it 'should have one user' do
    should belong_to(:track_version)
  end
end