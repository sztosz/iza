class News < ActiveRecord::Base
  belongs_to :category
  default_scope -> { order('created_at DESC') }
  validates :title, :content, :abstract, presence: true
end
