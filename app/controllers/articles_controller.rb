class ArticlesController < ApplicationController

  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    @article.save
    flash[:notice] = 'Article created'
    redirect_to articles_path
  end

  def articles_params
    params.require(:article).permit(:title, :text)
  end
end
