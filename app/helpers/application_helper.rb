module ApplicationHelper
  def sample_helper
    "<p>This is a helper!</p>".html_safe
  end

  def login_container_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thank you for visiting me from #{session[:source]}. This is the #{layout_name} layout."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end
end
