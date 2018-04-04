class ApiController < ApplicationController

  protected
    def current_user
      @user ||= User.find(session[:current_user_id])
    end

    def authenicate_user!
      session[:current_user_id].present?
    end
end
