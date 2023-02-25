class Classification < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :classtrans, class_name: 'ClassTran'
  has_many :transactions, through: :classtrans

  def total_amount
    total = 0
    classtrans.each do |item|
      total += item.trans_table.amount
    end
    total
  end
end
