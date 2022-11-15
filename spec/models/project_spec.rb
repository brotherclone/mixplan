require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'has a valid Factory' do
    expect(build(:project)).to be_valid
  end
  it 'is invalid without a title' do
    expect(build(:project, title: nil)).to_not be_valid
  end
  it 'should have users through project users' do
    should have_many(:project_users)
    should have_many(:users).through(:project_users)
  end
  it 'should have tracks through project tracks' do
    should have_many(:project_tracks)
    should have_many(:tracks).through(:project_tracks)
  end
  it 'should have user roles through project user roles' do
    should have_many(:project_user_roles)
    should have_many(:user_roles).through(:project_user_roles)
  end
  it 'should have one audio file service' do
    should have_one(:audio_file_service)
  end
end
