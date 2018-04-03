class CartsController < ApplicationController
	def show
		@user = current_user
		@cart = Cart.find_by_id(session[:session_id])
	
	end

	def new
		@user = current_user.id

	end

	def add_item
		item = Item.find_by_id(params[:itemid])
		cart = Cart.find_by_id(session[:session_id])
		p params[:quantity]
		item.quantity = params[:quantity]
		if cart.items.include?(item) == false
		cart.items << item
		temp = cart.totalcost + (item.price * item.quantity)
		cart.update(totalcost: temp)
		flash[:message] = "item succesfully added to cart"
		redirect_to root_path
		else
			flash[:message] = "item already in cart"
			redirect_to root_path
		end
	end

	def destroyItem
	end

	def checkout
	end


end
