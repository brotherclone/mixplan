require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'has a valid Factory' do
    expect(build(:project)).to be_valid
  end
  it 'is invalid without a title' do
    expect(build(:project, title: nil)).to_not be_valid
  end
  it 'should belong to an audio file service' do
    should belong_to(:audio_file_service)
  end
  it 'should have users through project users' do
    should have_many(:project_users)
    should have_many(:users).through(:project_users)
  end
end
