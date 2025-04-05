class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = current_user.categories
  end

  def show; end

  def new
    @category = current_user.categories.new
  end

  def edit; end

  def create
    @category = current_user.categories.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Categoria criada com sucesso.'
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: 'Categoria atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'Categoria removida com sucesso.'
  end

  private

  def set_category
    @category = current_user.categories.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :color)
  end
end
