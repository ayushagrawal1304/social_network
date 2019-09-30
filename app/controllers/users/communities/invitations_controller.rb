class Users::Communities::InvitationsController < ApplicationController

  def index
   # Users invitations list here
  end

  def create
    binding.pry
    @approval = Approval.new(approval_params)
    @approval[:approved]= false
    binding.pry
    if @approval.save
      binding.pry
      redirect_to users_community_path(params[:id]), flash: {success: "Invited successfully"}
    else 
      binding.pry     
      render 'show'
    end

  end


  def accept
   #accept invitation
  end

  def delete
 
  end

  def approval_params
    params.permit(:user_id, :community_id)
  end

end
