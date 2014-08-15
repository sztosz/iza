class Story < ActiveRecord::Base
  belongs_to :category
  belongs_to :admin
  default_scope -> { order('created_at DESC') }
  validates :title, :content, :abstract, :category, :admin, presence: true
end
