class UsersController < ApplicationController
  before_action :fetch_user, only: %i[show new edit destroy]
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user), notice: 'Your account has been created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    @user.save
  end

  def destroy
    @user.delete
    redirect_to users_path
  end

  private

  def fetch_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(full_name, bio, avatar)
  end
end
