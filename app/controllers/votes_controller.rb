class VotesController < ApplicationController
  before_action :confirm_logged_in_user
  before_action :set_voter

  def create
    existing_vote = Vote.find_by(user_id: @voter.id, article_id: params[:article_id])
    vote = Vote.new(user_id: @voter.id, article_id: params[:article_id])

    if existing_vote.nil? && vote.save
      flash[:notice] = "Thank you for your like!"
      redirect_to article_path(params[:article_id])
    elsif existing_vote && vote.save
      flash[:warning] = "You\'ve already liked this article!"
      redirect_to article_path(params[:article_id])
    else
      flash[:danger] = vote.errors.full_messages
    end
  end

  def destroy
    existing_vote = Vote.find_by(user_id: @voter.id, article_id: params[:article_id])
    if existing_vote.nil?
      flash[:notice] = 'Thank you for your feed-back!'
      redirect_to article_path(params[:article_id])
    else
      existing_vote.destroy
      flash[:notice] = 'You disliked this article!'
      redirect_to article_path(params[:article_id])
    end
  end

  private
  def vote_params_article
    params.permit(:article_id)
  end

  def set_voter
    @voter = User.find(current_user.id)
  end

end
