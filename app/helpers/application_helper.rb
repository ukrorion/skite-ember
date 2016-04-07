module ApplicationHelper

  def flash_messages
    [:success, :warning, :info, :alert].map do |message_type|
      content_tag(:div, class: "#{message_type} callout small", data: { closable: "slide-out-right" }) do
        content_tag(:ul) do
          if flash[message_type].is_a? Array
            flash[message_type].map do |message|
              concat(content_tag(:li, message))
            end
          else flash[message_type].is_a? String
            concat(content_tag(:li, flash[message_type]))
          end
        end + content_tag(:button, class: "close-button", aria: { label: "Dismiss alert" }, type: "button", data: { close: nil }) do
          content_tag(:span, '&times;'.html_safe, aria: { hidden: true })
        end
      end if flash[message_type].present?
    end.join.html_safe
  end

end
