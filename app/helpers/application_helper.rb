module ApplicationHelper
  def controller?(name)
    params[:controller].downcase == name.downcase
  end

  def action?(name)
    params[:action].downcase == name.downcase
  end

  def navbar_hidden?
    controller?('misc') && action?('thanks')
  end

  def stylesheet_exists?(stylesheet)
    stylesheet = "#{Rails.root}/app/assets/stylesheets/#{stylesheet}"
    File.exists?("#{stylesheet}.scss") || File.exists?("#{stylesheet}.css")
  end

  def javascript_exists?(javascript)
    javascript = "#{Rails.root}/app/assets/javascripts/#{javascript}"
    File.exists?("#{javascript}.scss") || File.exists?("#{javascript}.css")
  end
end
