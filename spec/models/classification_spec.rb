require_relative "../rails_helper"

RSpec.describe Classification, type: :model do
    before do
        @user = User.create(name: "Sajeel Zafar")
        @classification = Classification.create(name: "Fruits", icon: "https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature.jpg?sfvrsn=64942d53_4", author: @user)
    end

    it "should have a name" do
        @classification.name = nil
        expect(@classification).to_not be_valid
    end

    it "should have a corresponding icon" do
        @classification.icon = nil
        expect(@classification).to_not be_valid
    end
end