module Admin::BaseHelper
  def main_nav(menus,  current_controller)
    menu_html = []

    menus.each do |menu|
      locals = {
        :name => menu[:name],
        :href => menu[:href],
        :css_classes => menu[:css_classes] || [],
      }
      locals[:css_classes] << "active" if current_controller.class.to_s == menu[:controller]

      menu_html << render(:partial => "shared/nav_li",  :locals => locals)
    end

    return menu_html.join('').html_safe
  end

  def twitterized_type(type)
    case type
    when :alert
      "alert-warning"
    when :error
      "alert-error"
    when :notice
      "alert-info"
    when :success
      "alert-success"
    else
      type.to_s
    end
  end
end
