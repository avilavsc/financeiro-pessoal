require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:user) { User.create!(email: 'teste@email.com', password: '123456') }
  let(:category) { Category.create!(name: 'Alimentação', color: '#ff0000', user: user) }

  it 'é válido com atributos válidos' do
    transaction = Transaction.new(
      transaction_type: 0,
      value: 100.0,
      date: Date.today,
      description: 'Compra',
      user: user,
      category: category
    )
    expect(transaction).to be_valid
  end

  it 'é inválido sem valor' do
    transaction = Transaction.new(value: nil)
    expect(transaction).to_not be_valid
  end
end
