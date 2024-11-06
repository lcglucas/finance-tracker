class Users::SessionsController < Devise::SessionsController
  def after_sign_out_path_for(resource_or_scope)
    flash[:notice] = nil
    new_user_session_path
  end
end
