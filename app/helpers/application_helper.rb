module ApplicationHelper
  def show_sign_up_or_in
    out = ''
    if member_signed_in?
      out << link_to('Sign out', destroy_member_session_path, method: :delete, class: 'btn btn-outline-danger')
    else
      out << link_to('Sign in', member_session_path, class: 'btn btn-outline-success mr-3')
      out << link_to('Sign up', new_member_registration_path, class: 'btn btn-outline-primary')
    end
    out.html_safe
  end
end
