class ErrorsController < ApplicationController

  def error_404
    @not_found_path = params[:not_found]
  end

  def error_500
  end

  def error_500_fake
    raise "faked 500 error"
  end

end
