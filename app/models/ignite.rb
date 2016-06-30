class Ignite < ActiveRecord::Base
  (0..21).each do |i|
    slide = "slide_#{i}".to_sym

    has_attached_file slide, :styles => { :small => "150x150>" },
                      :url  => "/assets/ignites/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/ignites/:id/:style/:basename.:extension",
                      :default_url => "/assets/images/missing.jpg"

    validates_attachment_size slide, :less_than => 5.megabytes
    validates_attachment_content_type slide, :content_type => ['image/jpeg', 'image/png']
  end

end
