class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :set_important_categories

  private

  def set_important_categories
    @categories_important = Category.importants
  end
end
