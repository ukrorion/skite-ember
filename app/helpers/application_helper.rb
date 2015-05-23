module ApplicationHelper

  def flash_messages shape = "radius"
    [:success, :warning, :info, :alert].each do |message_type|
      content_tag :div, class: "alert-box #{message_type} #{shape}" do
        content_tag :ul do
          flash[message_type].each do |message|
            content_tag(:li,message)
          end.join
        end if flash[message_type].present?
        link_to("#", "\&times\;", class: "close")
      end
    end.join
  end

end
