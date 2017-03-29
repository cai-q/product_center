class Product < ApplicationRecord
  has_many :commodities
  has_attached_file :image_header
  has_attached_file :image_thumbnail
  validates_attachment_content_type [:image_header, :image_thumbnail],
                                    content_type: %r{\Aimage\/.*}
end
