class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum transaction_type: { despesas: 0, receitas: 1 }

  validates :value, :date, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[description value date category_id user_id created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[category]
  end
end
