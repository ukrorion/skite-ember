module ApplicationHelper

  def flash_messages shape = "radius"
    [:success, :warning, :info, :alert].map do |message_type|
      content_tag(:div, class: "alert-box #{message_type} #{shape}", data: { alert: "" }) do
        content_tag(:ul) do
          if flash[message_type].is_a? Array
            flash[message_type].map do |message|
              concat(content_tag(:li, message))
            end
          else flash[message_type].is_a? String
            concat(content_tag(:li, flash[message_type]))
          end
        end + link_to('&times;'.html_safe, "#", class: "close")
      end if flash[message_type].present?
    end.join.html_safe
  end

end
