class Page < ActiveRecord::Base
    set_table_name :pages
    
    validates :title, :content, :presence => true
end