class PublicController < ApplicationController
  def homepage
    redirect_to dashboard_path if current_user
  end
end
