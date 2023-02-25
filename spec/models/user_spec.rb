require_relative '../rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(name: 'Sajeel Zafar')
  end

  it 'should have a username' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
end
