require 'rails_helper'

RSpec.describe ProjectUser, type: :model do
  it 'has a valid Factory' do
    expect(build(:project_user)).to be_valid
  end
  it 'belong to a user' do
    should belong_to(:user)
  end
  it 'belong to a user' do
    should belong_to(:project)
  end
end
