module ApplicationHelper
  def title(title)
    content_for :title, title.to_s if title
  end
end
