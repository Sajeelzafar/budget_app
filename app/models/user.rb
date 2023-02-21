class User < ApplicationRecord
    validate :name, presence: true
    validate :email, presence: true
    

    has_many :classifications
    has_many :transactions
end
