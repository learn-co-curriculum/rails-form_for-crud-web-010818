class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :make_header, :make_link

  def make_header(title)
    "<h1>#{title}</h1>".html_safe
  end

  def make_link(text, path)
    
  end

end
