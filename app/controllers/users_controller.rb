class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user, notice: "#{@user.name}, congratulations on joining our guild!"
    else
      render :new
    end
  end
end
