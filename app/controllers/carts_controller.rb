class CartsController < ApplicationController
 skip_before_action :authenticate_user, only: [:add_to_cart]
  def index
    cart = Cart.where(user: current_user)
    @product = Product.where(id: cart.pluck(:product_id))
  end
  def add_to_cart
   if current_user
   	  Cart.create!(user: current_user, product_id: params[:product_id])
   else
   	session[:cart_items] = [] if session[:cart_items].blank?
   	session[:cart_items] << params[:product_id]
   end
   redirect_to root_path
  end
end
