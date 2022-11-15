require 'rails_helper'

RSpec.describe ProjectUserRole, type: :model do
  it 'has a valid Factory' do
    expect(build(:project_user_role)).to be_valid
  end
  it 'belong to a user role' do
    should belong_to(:user_role)
  end
  it 'belong to a project' do
    should belong_to(:project)
  end
end