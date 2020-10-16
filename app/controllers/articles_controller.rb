class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  # GET /articles
  def index
    @articles = Article.heros
    @hero_article = Vote.most_voted_article
  end

  # GET /articles/1
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
    @categories = Category.all
  end

  # GET /articles/1/edit
  def edit
    @categories = Category.all
  end

  # POST /articles
  def create
    
    
    @article = Article.new(article_params)
    @article.author = current_user
    

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def article_params
    params.require(:article).permit(:title, :text, :category_id)
  end
end
