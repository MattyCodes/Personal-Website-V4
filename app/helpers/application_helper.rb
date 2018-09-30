module ApplicationHelper
  def controller?(name)
    params[:controller].downcase == name.downcase
  end

  def action?(name)
    params[:action].downcase == name.downcase
  end
end
