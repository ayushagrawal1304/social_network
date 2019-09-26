class Users::DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @community=Community.where("user_id="+current_user.id.to_s)
  end
end
