class CartItemsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    data = {}
    data[item.id] = 1
    session[:cart] = data
    # session[:cart] = # {item.id => quantity}
    redirect_to root_path
  end

  def index
    @cart_items = cart.items
  end

end