require_relative '../rails_helper'

RSpec.describe Classification, type: :model do
  before do
    @user = User.create(name: 'Sajeel Zafar')
    @classification = Classification.create(
      name: 'Fruits',
      icon: 'https://www.shutterstock.com/image-vector/url-shortener-man-pushes-address-600w-2201694049.jpg',
      author: @user
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
