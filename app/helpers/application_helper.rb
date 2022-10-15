module ApplicationHelper
  def my_truncate(text, options = {})
    text.truncate(options.fetch(:length, 30))
  end
end
