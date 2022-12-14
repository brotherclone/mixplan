require 'rails_helper'

RSpec.describe Issue, type: :model do
  it 'has a valid Factory' do
    expect(build(:issue)).to be_valid
  end
  it 'should have a track' do
    should belong_to(:track)
  end
  it 'should have many track versions through track issues' do
    should have_many(:track_issues)
    should have_many(:track_versions).through(:track_issues)
  end
end