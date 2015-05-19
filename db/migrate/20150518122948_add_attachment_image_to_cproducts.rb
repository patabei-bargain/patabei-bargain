class AddAttachmentImageToCproducts < ActiveRecord::Migration
  def self.up
    change_table :cproducts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cproducts, :image
  end
end
