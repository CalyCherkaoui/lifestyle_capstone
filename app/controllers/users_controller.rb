class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  # GET /users/1
  def show
    @user = User.find(params[:id])
    @liked_articles = @user.liked_articles.includes(image_attachment: :blob).includes(:category)
    @written_articles = @user.articles.includes(image_attachment: :blob).includes(:category)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      redirect_to root_path
      flash[:success] = 'Your account was successfully created! Enjoy your photosynthesis journey.'
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name)
  end
end
