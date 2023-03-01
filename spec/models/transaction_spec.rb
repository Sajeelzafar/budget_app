require_relative '../rails_helper'

RSpec.describe TransTable, type: :model do
  before do
    @user = User.create(name: 'Sajeel Zafar', email: 'sajeelzafar1995@gmail.com', photo: 'https://media.licdn.com/dms/image/D4D35AQHT5r7V2Hc8QA/profile-framedphoto-shrink_200_200/0/1669286916513?e=1678291200&v=beta&t=tdlpYVNZ3BVHutaGERgXdZibmsfBOJiEVlfsMyaSvMI')
    @transaction = TransTable.create(name: 'Grapes', amount: 2.10, author_id: @user.id)
  end

  it 'should have a name' do
    @transaction.name = nil
    expect(@transaction).to_not be_valid
  end

  it 'should have a corresponding amount' do
    @transaction.amount = nil
    expect(@transaction).to_not be_valid
  end
end
