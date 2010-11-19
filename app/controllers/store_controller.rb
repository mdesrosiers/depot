class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
      @access_count = get_next_index_access_count
      @products = Product.all
      @cart = current_cart
    end
  end

  def get_next_index_access_count
    session[:counter] ||= 0
    session[:counter] += 1
  end

end
