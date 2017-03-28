class AddAttachmentImageToCommodities < ActiveRecord::Migration
  def self.up
    change_table :commodities do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :commodities, :image
  end
end
