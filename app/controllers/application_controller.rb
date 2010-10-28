class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_time

  def set_current_time
    @current_time = Time.now
  end

  private

  def current_cart 
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

end
