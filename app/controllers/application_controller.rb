class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def yo
    render html: "yo"
  end
end
