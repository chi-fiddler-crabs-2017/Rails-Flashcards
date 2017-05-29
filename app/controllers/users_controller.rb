class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to decks_path
    else
      @errors = @user.errors.full_messages
      render new_user_path
    end

  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
