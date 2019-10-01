class Users::DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    #binding.pry
    @community=Community.where(user_id: current_user.id)
  end

  

end
