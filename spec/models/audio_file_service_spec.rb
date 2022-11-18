require 'rails_helper'

RSpec.describe AudioFileService, type: :model do
  it 'has a valid Factory' do
    expect(build(:audio_file_service)).to be_valid
  end
  it 'has a valid Factory with a project' do
    expect(build(:audio_file_service_with_project)).to be_valid
  end
end