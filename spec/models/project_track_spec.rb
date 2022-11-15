require 'rails_helper'

RSpec.describe ProjectTrack, type: :model do
  it 'has a valid Factory' do
    expect(build(:project_track)).to be_valid
  end
  it 'should belong to a track' do
    should belong_to(:track)
  end
  it 'should belong to a project' do
    should belong_to(:project)
  end
end