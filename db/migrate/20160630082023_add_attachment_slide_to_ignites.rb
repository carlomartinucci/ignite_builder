class AddAttachmentSlideToIgnites < ActiveRecord::Migration
  def self.up
    change_table :ignites do |t|
      (0..21).each do |i|
        t.attachment "slide_#{i}".to_sym
      end
    end
  end

  def self.down
    (0..21).each do |i|
      remove_attachment :ignites, "slide_#{i}".to_sym
      end
  end
end
