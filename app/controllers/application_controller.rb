class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :set_cart


def set_cart 
	if session[:session_id]
  		@cart = Cart.find_by_id(session[:session_id]) 
  	end
  	
  	if session[:session_id].nil?
		@cart = Cart.create
  		session[:session_id] = @cart.id
  	end
  	@cart
end
end
