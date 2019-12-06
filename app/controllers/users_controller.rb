class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      flash[:notice] = "You cannot edit"
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
		@user_id = current_user.id
		if @user.update(user_params)
			flash[:notice] = "You have updated user successfully."
			redirect_to user_path(@user.id)
		else
			flash[:notice] = "error."
			render("users/edit")
		end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(User::REGISTRABLE_ATTRIBUTES)
  end
  
end
