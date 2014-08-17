class ArticlesController < ApplicationController
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

  private

  def article_params
    params.require(:article).permit(:title, :abstract, :content, :category_id, :admin_id)
  end
end
