require 'rails_helper'

RSpec.describe UserRole, type: :model do
  it 'has a valid Factory' do
    expect(build(:user_role)).to be_valid
  end
  it 'should have many projects through project user roles' do
    should have_many(:project_user_roles)
    should have_many(:project_users).through(:project_user_roles)
  end
end
