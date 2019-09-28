module UsersHelper
  def invite_user_options
    User.invite_users(current_user).map { |user| [user.email, user.id ] }
  end
end
