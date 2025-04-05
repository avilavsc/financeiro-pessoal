class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum transaction_type: { despesas: 0, receitas: 1 }

  validates :value, :date, presence: true
end
