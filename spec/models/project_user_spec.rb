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
  it 'should have many project user roles through project users' do
    should have_many(:project_user_roles)
    should have_many(:user_roles).through(:project_user_roles)
  end
end
