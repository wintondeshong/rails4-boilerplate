module ApplicationHelper
  def title page_title, options={}
    content_for :title, page_title.to_s
    content_tag :h1, page_title, options
  end
end
