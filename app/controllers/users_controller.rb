class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html { redirect_to "/jets" }
      format.json { render json: @user }
    end
  end

end