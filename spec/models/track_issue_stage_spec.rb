require 'rails_helper'

RSpec.describe TrackIssueStage, type: :model do
  it 'has a valid Factory' do
    expect(build(:track_issue_stage)).to be_valid
  end
  it 'should belong to a track issue' do
      should belong_to(:track_issue)
  end
  it 'should belong to a track stage' do
    should belong_to(:track_stage)
  end
end