module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to('Logout', '/login', :method => :delete, :class => 'button')}</li>"
    else
      "<li>#{link_to('Login to trucKlub', login_path)}</li>"
    end
  end

  def code_form
    "<li class='divider'></li>"
    "<li><a href='#' class='button prefix show_code_button'>Enter Code</a></li>"
    "<li class='divider'></li>"
    "<li><input class = 'hide code_form' type='text' placeholder='Meal code'></li>"
    "<li><a href='#' class='hide button success prefix create_code_button'>Submit Code</a></li>"
    "<li><p class='error_code hide'>invalid</p></li>"
  end
end
