module ApplicationHelper
  ALERT_TYPES = [:danger, :info, :success, :warning]

  def bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      # Skip empty messages, e.g. for devise messages set to nothing in a locale file.
      next if message.blank?

      type = :success if type == :notice
      type = :danger  if [:alert, :error].include?(type)
      next unless ALERT_TYPES.include?(type)

      Array(message).each do |msg|
        text = content_tag(:div,
                           content_tag(:a, raw("&times;"), class: "close", "data-dismiss" => "alert") +
                           msg, class: "alert alert-#{type}")
        flash_messages << text if message
      end
    end

    flash_messages.join("\n").html_safe
  end

  def form_failure_message(resource)
    messages = resource.errors.full_messages.inject([]) {|memo, error| memo << error }
    content_tag(
      :div,
      content_tag(:a, raw("&times;"), class: "close", "data-dismiss" => "alert") +
      messages.join('<br />').html_safe, class: "alert alert-danger"
    ) unless messages.blank?
  end

  def current_user
    current_backend_user || current_reseller
  end

  def error_on(record, field)
    html = ""
    record.errors[field].each do |error|
      html += %{ <span class="help-block help-error">#{ field.to_s.humanize } #{ error }<span> }
    end if record.errors.include?(field)

    html.html_safe
  end

  def secure_date(value)
    datetime = value
    if [String, Fixnum, Bignum].include?(value.class) && value.to_i > 100000000
      datetime = Time.at(value.to_i)
    end
    return datetime
  end

  def timepicker_format(value)
    begin
      datetime = secure_date(value).utc
    rescue
      return value
    end

    return "" unless datetime
    begin
      current_time = datetime.strftime('%Y-%m-%d %H:%M')
    rescue
      current_time = Time.parse(value).utc.strftime('%Y-%m-%d %H:%M') rescue nil
    end
    current_time

  end
end
