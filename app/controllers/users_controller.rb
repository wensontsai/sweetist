class UsersController < ApplicationController

  def index
    @user = current_user
  end

  # def index
  #   if params[:approved] == "false"
  #     @users = User.find_all_by_approved(false)
  #   else
  #     @users = User.all
  #   end
  # end

end
