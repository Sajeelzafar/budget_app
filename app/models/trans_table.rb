class TransTable < ApplicationRecord
    validates :name, presence: true
    validates :amount, presence: true, numericality: { greater_than: 0 }

    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    has_many :classtrans, class_name: "ClassTran"
    has_many :classifications, through: :classtrans
    accepts_nested_attributes_for :classtrans
end
