class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @q = current_user.transactions.ransack(params[:q])
    @transactions = @q.result.includes(:category).order(date: :desc)
  end

  def show; end

  def new
    @transaction = current_user.transactions.new
  end

  def edit; end

  def create
    @transaction = current_user.transactions.new(transaction_params)

    if @transaction.save
      redirect_to transactions_path, notice: 'Transação criada com sucesso.'
    else
      render :new
    end
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to transactions_path, notice: 'Transação atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path, notice: 'Transação removida com sucesso.'
  end

  private

  def set_transaction
    @transaction = current_user.transactions.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:transaction_type, :value, :description, :date, :category_id)
  end
end
