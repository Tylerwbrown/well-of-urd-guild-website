class MainController < ApplicationController
  def home
    id = session[:current_user_id]
    @user = User.find_by_id(id) if id.present?
    @user ||= User.new
  end
end
