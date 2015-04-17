module ApplicationHelper

  def bootstrap_alert_name rails_alert_name
    case rails_alert_name
      when "notice"
        "success"
      when "alert"
        "danger"
      else
        rails_alert_name
    end
  end

  def cdn_image_path relative_image_path
    asset_cdn_url       = ENV["ASSET_CDN_URL"].chomp("/")
    relative_image_path = relative_image_path.gsub(/^\//, "")
    "#{asset_cdn_url}/#{relative_image_path}"
  end

  def title page_title, options={}
    content_for :title, page_title.to_s
    content_tag :h1, page_title, options
  end

  # applies to simple javascript and css resources
  def use_cdn_resources?
    !Rails.env.development? and !Rails.env.test?
  end

end
