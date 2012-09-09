module ApplicationHelper

	 def flash_messages
       flash.collect do |key, msg|
       content_tag :p, msg, id: key, :class => "msg msg-ok"
    end.join.html_safe
  end

	def error_messages_for(resource)
    render partial: "errors/error_global", locals: { resource: resource }
  end
end
