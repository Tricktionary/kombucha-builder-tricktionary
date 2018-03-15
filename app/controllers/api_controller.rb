class ApiController < ApplicationController

  protected
    def authenicate_user!
      session[:current_user_id].present?
    end
end
