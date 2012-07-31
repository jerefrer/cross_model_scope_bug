class ArticleType < ActiveRecord::Base
  attr_accessible :blogable, :title

  scope :blogable,        where(:blogable => true)
  scope :blogable_flawed, where('NOT blogable')
end
