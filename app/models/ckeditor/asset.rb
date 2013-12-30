class Ckeditor::Asset < ActiveRecord::Base
  rails_admin do
    label "All Files"
    label_plural "All Files"
    navigation_label 'Files'
  end
  include Ckeditor::Orm::ActiveRecord::AssetBase
  include Ckeditor::Backend::Paperclip
end
