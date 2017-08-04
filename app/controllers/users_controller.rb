class UsersController < ApplicationController
  def create
    @user = User.new(email: params[:user][:email])
    @user.password = @user.password_confirmation = params[:user][:password]

    if @user.save
      session[:current_user_id] = @user.id
      redirect_to root_path, notice: "#{@user.name}, congratulations on joining our guild!"
    else
      render :new
    end
  end
end
