class User < ApplicationRecord
    validates :name, presence: true


    has_many :classifications
    has_many :transactions
end
