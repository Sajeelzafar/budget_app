class User < ApplicationRecord
    has_many :classifications
    has_many :transactions
end
