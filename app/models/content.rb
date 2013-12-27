class Content < ActiveRecord::Base
	validates :content, :pages_id, :presence => true
	belongs_to :pages, :inverse_of => :content
end
