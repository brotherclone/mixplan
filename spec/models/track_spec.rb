require 'rails_helper'

RSpec.describe Track, type: :model do
  it 'has a valid Factory' do
    expect(build(:track)).to be_valid
  end
  it 'should have many project tracks' do
    should have_many(:project_tracks)
  end
  it 'should have many track versions' do
    should have_many(:track_versions)
  end
  it 'should have many projects through project tracks' do
    should have_many(:project_tracks)
    should have_many(:projects).through(:project_tracks)
  end
end