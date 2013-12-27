class ApplicationController < ActionController::Base
	before_filter :authenticate_user! #necessidade de autenticacao para usar a app
  	protect_from_forgery
  	rescue_from CanCan::AccessDenied do |exception|
  	#	flash[:error] = "Access denied."
  		redirect_to root_url, :alert => exception.message
	end
end
