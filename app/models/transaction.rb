class Transaction < ApplicationRecord
    validates :name, presence: true
    validates :amount, presence: true, numericality: { greater_than: 0 }

    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    has_many :classtrans
    has_many :classifications, through: :classtrans
end
