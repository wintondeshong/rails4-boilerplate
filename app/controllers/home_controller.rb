class HomeController < ApplicationController

  def index
  end

  # provides environment specific
  def robots
    config_type = Rails.env.production? ? "production" : "development"
    robots      = File.read(Rails.root + "config/robots.#{config_type}.txt")
    render text: robots, layout: false, content_type: "text/plain"
  end

end
