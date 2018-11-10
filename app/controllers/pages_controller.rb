class PagesController < ApplicationController
  def index
    render layout: "welcome_layout"  
    #if current_user
    #  redirect_to dashboard_path
    #else
    #  render layout: "welcome_layout"
    #end
  end
end
