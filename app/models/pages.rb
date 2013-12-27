class Pages < ActiveRecord::Base
	validates :title, :url, :menu, :position, :template, :content, :presence => true
end
