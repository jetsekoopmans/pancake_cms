class Pages < ActiveRecord::Base
  validates :title, :url, :menu, :position, :template, :presence => true
  validates_uniqueness_of :url
  has_many :content, :dependent => :destroy, :inverse_of => :pages
  accepts_nested_attributes_for :content, :allow_destroy => true
end
