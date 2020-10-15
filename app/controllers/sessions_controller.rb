class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      # loggig
      redirect_to root_path, notice: 'You have logged-in successfully!'
    else
      flash.now[:danger] = 'Invalid User name!'
      render 'new'
    end
  end

  def destroy
  end
end
