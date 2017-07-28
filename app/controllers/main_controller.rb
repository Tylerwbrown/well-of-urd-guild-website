class MainController < ApplicationController
  def home
    session[:current_user_id]
    @user =
      if session[:current_user_id].present?
        User.find(session[:current_user_id])
      else
        User.new
      end
  end
end
