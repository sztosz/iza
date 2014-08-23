class CategoriesController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create]

  def index
    @categories = Category.all
  end

  def show
    @articles = Article.where category: Category.find(params[:id])
    @categories = Category.all
  end

  def new
    @category = Category.new
    @submit_name = 'Dodaj Kategorię'
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Kategoria dodana poprawnie'
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
    @submit_name = 'Zapisz zmiany'
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:notice] = 'Kategoria poprawnie zmieniona'
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end

