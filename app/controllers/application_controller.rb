class ApplicationController < ActionController::Base
	
	protect_from_forgery with: :exception
	before_action :set_locale

	around_action :user_time_zone, if: :current_user

private

	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{locale: I18n.locale}
	end

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def user_time_zone(&block)
		Time.use_zone(current_user.time_zone, &block)
	end


end

