class News < ActiveRecord::Base
  validates :title, :url, :date, :excerpt, :presence => true
  validates_uniqueness_of :url
end
