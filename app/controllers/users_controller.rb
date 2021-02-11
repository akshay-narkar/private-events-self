class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(paramas_new)
    @user.save!
    redirect to root_path
  end

  def show
    @user = User.all
  end

  def index; end

  private

  def paramas_new
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
