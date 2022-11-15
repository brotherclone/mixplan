require 'rails_helper'

RSpec.describe AudioFileService, type: :model do
  it 'has a valid Factory' do
    expect(build(:audio_file_service)).to be_valid
  end
  it 'should have one project' do
    should belong_to(:project)
  end
end