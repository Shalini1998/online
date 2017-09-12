class Admins::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new_users
    @user = User.new
  end

  def create_users
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to admins_users_path, notice: 'User was successfully created.' }
      else
        format.html { render :new_users }
      end
    end
  end

  def edit_users
    @user = User.find(params[:id])
  end

  def update_users
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admins_users_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit_users }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :role, :password)
    end
    
end
