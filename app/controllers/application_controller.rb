class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_time

  def set_current_time
    @current_time = Time.now + 1.hour
  end

end
