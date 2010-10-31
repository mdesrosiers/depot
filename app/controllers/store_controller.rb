class StoreController < ApplicationController
  def index
    @access_count = get_next_index_access_count
    @products = Product.all
    @cart = current_cart
  end

  def get_next_index_access_count
    session[:counter] ||= 0
    session[:counter] += 1
  end

end
