class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  default_scope { order(created_at: :desc) }
end
