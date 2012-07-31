class Article < ActiveRecord::Base
  attr_accessible :article_type_id, :title

  belongs_to :article_type

  scope :blogable,        lambda { includes(:article_type).merge ArticleType.blogable        }
  scope :blogable_flawed, lambda { includes(:article_type).merge ArticleType.blogable_flawed }
  scope :blogable_joins,  lambda { joins(:article_type).merge    ArticleType.blogable_flawed }
end
