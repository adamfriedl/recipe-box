module ApplicationHelper

  def current_user
    @user = User.find_by(id: session[:user_id]) || User.new
  end
  # helper_method :current_user

  def logged_in?
    current_user.id != nil
  end

  def require_logged_in
    return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
  end

end
