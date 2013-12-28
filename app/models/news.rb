class News < ActiveRecord::Base
  validates :title, :url, :date, :excerpt, :presence => true
end
