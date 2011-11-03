module AdminHelper

  def current_admin
    @current_admin ||= admin_from_remember_token
  end

  private
    def admin_from_remember_token
      Admin.authenticate_with_salt(*remember_token)
    end

    def remember_token
      cookies.signed[:remember_token] || [nil,nil]
    end
end
