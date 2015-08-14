class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
<<<<<<< HEAD

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      redirect_to root_path
=======
  def create
    @user = User.new(user_params)
    if @user.save
      # flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # Handle a successful save.
>>>>>>> 61dfb145bee476e1418d43041d60de4f0a67066d
    else
      render 'new'
    end
  end

  private

<<<<<<< HEAD
  def user_params
  params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
=======
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
>>>>>>> 61dfb145bee476e1418d43041d60de4f0a67066d
