require_relative "../rails_helper"

RSpec.describe Transaction, type: :model do
    before do
        @user = User.create(name: "Sajeel Zafar")
        @transaction = Transaction.create(name: "Grapes", amount: 2.10, author: @user)
    end

    it "should have a name" do
        @transaction.name = nil
        expect(@transaction).to_not be_valid
    end

    it "should have a corresponding amount" do
        @transaction.amount = nil
        expect(@transaction).to_not be_valid
    end
end