class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :set_cart


def set_cart 
	   if @cart = Cart.find_by_id(session[:cart_id])
  		@cart = Cart.find_by_id(session[:cart_id]) 
  	end
  	
  	if @cart = Cart.find_by_id(session[:cart_id]).nil?
		@cart = Cart.create(totalcost: 0)
  		session[:cart_id] = @cart.id
  	end
  	@cart
end
end
