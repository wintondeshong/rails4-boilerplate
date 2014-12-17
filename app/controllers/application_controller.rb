class ApplicationController < ActionController::Base
  include ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Exception handling
  # ------------------

  unless Rails.env.development?
    rescue_from Exception, with: lambda { |exception|
      log_exception exception
      redirect_to errors_error_500_path
    }
  end

  def log_exception exception
    logger.error exception.message
    exception.backtrace.each do |line|
      begin
        logger.error line, { disable_system_message_prefix: true, disable_location_prefix: true }
      rescue
        logger.error line
      end
    end
  end
end
