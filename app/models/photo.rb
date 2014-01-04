class Photo < ActiveRecord::Base
  #attr_accessible :caption, :album_id, :file
  belongs_to :album

  has_attached_file :file, :styles => { :detailed => "1920x1920>", :thumb => "100x100>" }
  #has_attached_file :file,
  #                  :url  => "/ckeditor_assets/pictures/:id/:style_:basename.:extension",
  #                  :path => ":rails_root/public/ckeditor_assets/pictures/:id/:style_:basename.:extension",
  #                  :styles => { :content => '1920x1920>', :thumb => '100x100>' }
 
end

