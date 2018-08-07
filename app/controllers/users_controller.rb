class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    respond_to do |format|
      format.json  { render json: @users }
    end
  end

  def create
    Rails.logger.info 'Creating User'
    require "byebug"; byebug
    user = User.new(params[:user])
    user.save!
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
