class ProductDecorator < Draper::Decorator
  delegate_all

  def image_header_hint
    if object.image_header.exists?
      h.image_tag(object.image_header.url, height: 50)
    else
      h.content_tag(:span, 'no image')
    end
  end

  def image_thumbnail_hint
    if object.image_thumbnail.exists?
      h.image_tag(object.image_thumbnail.url, height: 50)
    else
      h.content_tag(:span, 'no image')
    end
  end
end
