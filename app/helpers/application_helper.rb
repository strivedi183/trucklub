module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to('Logout', '/login', :method => :delete)}</li>"
    else
      "<li>#{link_to('Login to trucKlub', login_path)}</li>"
    end
  end
end
