class CartsController < ApplicationController
	def show
		@user = current_user
	end

	def new
		@user = current_user.id

	end

	def add_item
		@item = Item.find_by_id(params[:itemid])
		p params[:itemid]
		p @item
		@cart = Cart.find_by_id(params[:session_id])
		@cart.items << @item
		@cart.save
		redirect_to root_path
	end

	def destroyItem
	end

	def checkout
	end


end
