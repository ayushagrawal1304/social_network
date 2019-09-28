class Users::CommunitiesController < ApplicationController

	def new; end
  
  def create
     @community = Community.new(community_params)
     @community[:user_id] = current_user.id
      if @community.save
        redirect_to users_dashboards_path
      else
        render 'new'
      end
  end

  def show
    @community = Community.find(params[:id])
  end

  def invite_user
     binding.pry
     @approval = Approval.new(approval_params)
      binding.pry
     @approval[:approved]= false
    if @approval.save
      binding.pry
      redirect_to users_community_path
    else
      binding.pry
      render 'show'
    end
  end

  private
  def community_params
    params.require(:community).permit(:name)
  end

  def approval_params
    params.require(:user_id)
    params.require(:community_id)

  end
end
