class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_rich_text :content
end
