class Classification < ApplicationRecord
    validate :name, presence: true
    validate :icon, presence: true

    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    has_many :classtrans
    has_many :transactions, through: :classtrans
end
