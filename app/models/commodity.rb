class Commodity < ApplicationRecord
  belongs_to :product
  has_and_belongs_to_many :commodities
  has_attached_file :image
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*}
end
