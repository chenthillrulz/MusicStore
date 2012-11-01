module ApplicationHelper
	def get_taxonomies
    @taxonomies ||= Spree::Taxonomy.includes(:root => :children)
  end

  def options_for_dropdown(container, selected = nil)
    return container if String === container

    selected, disabled = extract_selected_and_disabled(selected).map do | r |
       Array.wrap(r).map { |item| item.to_s }
    end

    container.map do |element|
      html_attributes = option_html_attributes(element)
      text, value = option_text_and_value(element).map { |item| item.to_s }
      selected_attribute = ' selected="selected"' if option_value_selected?(value, selected)
      disabled_attribute = ' disabled="disabled"' if disabled && option_value_selected?(value, disabled)
      %(<li #{html_attributes}>#{ERB::Util.html_escape(text)}</li>)
    end.join("\n").html_safe

  end
end

#value="#{ERB::Util.html_escape(value)}"#{selected_attribute}#{disabled_attribute}