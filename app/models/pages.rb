class Pages < ActiveRecord::Base
  validates :title, :url, :menu, :template, :presence => true
  validates_uniqueness_of :url
  has_many :section, :dependent => :destroy, :inverse_of => :pages
  accepts_nested_attributes_for :section, :allow_destroy => true
  has_ancestry
end
