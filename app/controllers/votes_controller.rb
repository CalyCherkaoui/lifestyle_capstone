class VotesController < ApplicationController
  before_action :confirm_logged_in_user
  before_action :set_voter

  def create
    existing_vote = Vote.find_by(user_id: @voter.id, article_id: params[:article_id])

    if existing_vote.nil?
      vote = Vote.new(user_id: @voter.id, article_id: params[:article_id])
      if vote.save
        flash[:notice] = 'Thank you for your like!'
      else
        flash[:danger] = vote.errors.full_messages
      end
    else
      flash[:warning] = "You\'ve already liked this article!"
    end
    redirect_to article_path(params[:article_id])
  end

  def destroy
    existing_vote = Vote.find_by(user_id: @voter.id, article_id: params[:article_id])
    if existing_vote.nil?
      flash[:notice] = 'Thank you for your feed-back!'
    else
      existing_vote.destroy
      flash[:warning] = 'You disliked this article!'
    end
    redirect_to article_path(params[:article_id])
  end

  private

  def vote_params_article
    params.permit(:article_id)
  end

  def set_voter
    @voter = User.find(current_user.id)
  end
end
