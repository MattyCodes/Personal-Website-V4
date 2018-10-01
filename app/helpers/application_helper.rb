module ApplicationHelper
  def controller?(name)
    params[:controller].downcase == name.downcase
  end

  def action?(name)
    params[:action].downcase == name.downcase
  end

  def navbar_hidden?
    ( controller?('misc') && action?('thanks') ) || ( controller?('misc') && action?('contact') )
  end
end
