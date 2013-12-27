class Pages < ActiveRecord::Base
	validates :title, :url, :menu, :position, :content, :presence => true
end
