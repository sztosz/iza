class ArticlesController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]

  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
    @categories = Category.all
  end

  def new
    @article = Article.new
    @submit_name = 'Dodaj Artykuł'
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'Artykuł dodany poprawnie'
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    @submit_name = 'Zapisz zmiany'
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:notice] = 'Artykuł poprawnie zmieniony'
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :abstract, :content, :category_id, :admin_id)
  end
end
