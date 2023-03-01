require_relative '../rails_helper'

RSpec.describe Classification, type: :model do
  before do
    @user = User.create(name: 'Sajeel Zafar', email: 'sajeelzafar1995@gmail.com', photo: 'https://media.licdn.com/dms/image/D4D35AQHT5r7V2Hc8QA/profile-framedphoto-shrink_200_200/0/1669286916513?e=1678291200&v=beta&t=tdlpYVNZ3BVHutaGERgXdZibmsfBOJiEVlfsMyaSvMI')
    @classification = Classification.create(
      name: 'Fruits',
      icon: 'https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-600w-2201694049.jpg',
      author_id: @user.id
    )
  end

  it 'should have a name' do
    @classification.name = nil
    expect(@classification).to_not be_valid
  end

  it 'should have a corresponding icon' do
    @classification.icon = nil
    expect(@classification).to_not be_valid
  end
end
