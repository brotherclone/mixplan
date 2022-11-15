require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid Factory' do
    expect(build(:user)).to be_valid
  end
  it 'is invalid without an email' do
    expect(build(:user, email: nil)).to_not be_valid
  end
  it 'should have projects formats through project users' do
    should have_many(:project_users)
    should have_many(:projects).through(:project_users)
  end
  it 'should have many user roles' do
    should have_many(:user_roles)
  end
  it 'should have many projects' do
    should have_many(:projects)
  end
end
