module BootstrapFlashHelper  
  def bootstrap_flash
   flash_messages = []
   flash.each do |type, message|
     type = :success if type == :notice
     type = :error   if type == :alert
     text = content_tag(:div, link_to("x", "#", :class => "close", "data-dismiss" => "alert") + message, :class => "alert fade in alert-#{type}")
    #message diferente de true para resolver bug de mensagem true do timedout
     flash_messages << text if message!=true
    end
   flash_messages.join("\n").html_safe
 end
end
