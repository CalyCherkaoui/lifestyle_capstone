class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/1
  def show
    @articles = @category.articles.with_attached_image
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end
end
