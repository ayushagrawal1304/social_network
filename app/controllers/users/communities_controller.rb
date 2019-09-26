class Users::CommunitiesController < ApplicationController

	def new
	end
  
  def create

     @community = Community.new(community_params)
     @community[:user_id] = current_user.id
      if @community.save
        redirect_to users_dashboards_path
      else
        render 'new'
      end
  end

  private
  def community_params
    params.require(:community).permit(:name)
  end
end
