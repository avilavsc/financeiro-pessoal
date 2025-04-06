require 'rails_helper'

RSpec.describe "Transactions", type: :request do
  let(:user) { User.create!(email: 'teste@email.com', password: '123456') }

  before do
    sign_in user
  end

  it "carrega a lista de transações" do
    get transactions_path
    expect(response).to have_http_status(:success)
    expect(response.body).to include("Transações")
  end
end
