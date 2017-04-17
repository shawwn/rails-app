class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def yo
    render html: "yo"
  end
end
