class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  # Takes the blog.title and automatically generates a slug for that title 
end
