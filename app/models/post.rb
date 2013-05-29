class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :name,  :presence =>true
  validate  :title, :presence =>true,
                    :length => {:minimum=> 5}
  has_many  :comments
end
