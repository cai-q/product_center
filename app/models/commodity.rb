class Commodity < ApplicationRecord
  belongs_to :product
  has_attached_file :image,
                    styles: { medium: '300*300>', thumb: '100*100>' },
                    default_url: 'default/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
