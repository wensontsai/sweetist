class UsersController < ApplicationController

  def account
    @user = User.find(params[:id])
  end

  # def index
  #   if params[:approved] == "false"
  #     @users = User.find_all_by_approved(false)
  #   else
  #     @users = User.all
  #   end
  # end

end
