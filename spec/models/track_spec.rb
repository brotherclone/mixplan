require 'rails_helper'

RSpec.describe Track, type: :model do
  it 'has a valid Factory' do
    expect(build(:track)).to be_valid
  end
  it 'should belong to a project' do
    should belong_to(:project)
  end
  it 'should have many track versions' do
    should have_many(:track_versions)
  end
end