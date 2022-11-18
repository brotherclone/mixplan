require 'rails_helper'

RSpec.describe TrackIssue, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_issue)).to be_valid
  end
  it 'belong to an issue' do
    should belong_to(:issue)
  end
  it 'belong to a track version' do
    should belong_to(:track_version)
  end
  it 'belong to a project user' do
    should belong_to(:project_user)
  end
  it 'should have many track stages through track issue stages' do
    should have_many(:track_issue_stages)
    should have_many(:track_stages).through(:track_issue_stages)
  end
end