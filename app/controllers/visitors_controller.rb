class VisitorsController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.all
  end

  def about
  end

  def lawyers
  end

  def services
  end

  def pricing
  end
end
