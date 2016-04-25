class Post < ApplicationRecord
  belongs_to :category

  scope :for_category, -> name {
    joins(:category).where(categories: {name: name})
  }
end
