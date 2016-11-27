class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    
    #binding.pry
    @user = User.new(user_params)
    if @user.save
      @user.show_datas
      redirect_to users_url
    else
      render 'new'
    end
  end

  private 
  def user_params
    params.require(:user).permit(:name, :department, :second_id)
  end
end
