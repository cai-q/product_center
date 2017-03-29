class AddAttachmentImageHeaderImageThumbnailToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :image_header
      t.attachment :image_thumbnail
    end
  end

  def self.down
    remove_attachment :products, :image_header
    remove_attachment :products, :image_thumbnail
  end
end
