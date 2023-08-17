class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
  end

  def delete
    @article = Article.find(params[:id])
    @article.delete
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
