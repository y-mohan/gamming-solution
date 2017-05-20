module MoveFromSessionToCart
  extend ActiveSupport::Concern
  def add_items_to_cart(user)
    unless session[:cart_items].nil?
    	session[:cart_items].each do |product_id|
           Cart.create!(product_id: product_id, user: user)
    	end
    end
  end
end