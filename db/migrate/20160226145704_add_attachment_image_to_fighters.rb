class AddAttachmentImageToFighters < ActiveRecord::Migration
  def self.up
    change_table :fighters do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fighters, :image
  end
end
