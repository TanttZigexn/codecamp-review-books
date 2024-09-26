class Comment < ApplicationRecord
  belongs_to :book
  validates :content, presence: true
  validates :user_name, presence: true
end
