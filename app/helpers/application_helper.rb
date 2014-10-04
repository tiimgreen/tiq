module ApplicationHelper
  # Short method for checking if on certain page
  def on_page(given_controller_name, given_action_name)
    controller.controller_name == given_controller_name &&
    controller.action_name == given_action_name
  end

  def header_class
    on_page('home', 'index') ? 'navbar navbar-inverse hero':  'navbar navbar-inverse normal'
  end

  # Renders long or short footer
  def render_footer
    if large_footer?
      render 'layouts/large_footer'
    else
      render 'layouts/small_footer'
    end
  end

  # Only show large footer when user not signed in
  def large_footer?
    !user_signed_in?
  end
end
