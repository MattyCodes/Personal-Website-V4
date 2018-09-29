module ApplicationHelper
  def controller?(name)
    params[:controller].downcase == name.downcase
  end

  def action?(name)
    params[:action].downcase == name.downcase
  end

  def home_page?
    controller?('misc') && action?('home')
  end

  def show_background_tiles?
    home_page?
  end
end
