class ApplicationController < ActionController::Base
  include Pundit::Authorization
  around_action :switch_locale


  def switch_locale(&action)
    I18n.with_locale(locale_from_header, &action)
  end

  def locale_from_header
    session[:language] || request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

  def change_language
    session[:language] = params[:language]
    I18n.locale = session[:language]
    redirect_back(fallback_location: root_path)
  end
end
