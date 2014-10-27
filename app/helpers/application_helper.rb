module ApplicationHelper
  def nav_partial
    if user_signed_in?
      "shared/user_signed_in_nav"
    else
      "shared/user_signed_out_nav"
    end
  end
end
