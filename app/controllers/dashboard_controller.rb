class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = current_user.transactions

    @total_receitas = @transactions.receitas.sum(:value)
    @total_despesas = @transactions.despesas.sum(:value)
    @saldo = @total_receitas - @total_despesas

    @despesas_por_categoria = @transactions.despesas
      .group(:category_id)
      .joins(:category)
      .sum(:value)

    @categoria_nomes = Category.where(id: @despesas_por_categoria.keys).pluck(:id, :name).to_h
  end
end
