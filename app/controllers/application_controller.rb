class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :set_locale

  after_filter :set_access_control_headers

  def set_access_control_headers
  headers['Access-Control-Allow-Origin'] = '*'
  headers['Access-Control-Request-Method'] = '*'
  end

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	# add (:locale) to the default url
	def default_url_options(options={})
		{ :locale => I18n.locale }
	end

end
