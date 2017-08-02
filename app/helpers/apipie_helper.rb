module ApipieHelper
  include ActionView::Helpers::TagHelper

  def heading(title, level=1)
    content_tag("h#{level}") do
      title
    end
  end

  def required(param)
    return t('apipie.required') if param[:required]
    return t('apipie.optional') if param[:required].blank? && param[:required_one_from].blank?
    t('apipie.required_one_from',
      params: "<code>#{([param[:name]] + param[:required_one_from]).join('</code>, <code>')}</code>").html_safe
  end
end
