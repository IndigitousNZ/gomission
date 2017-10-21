class Tool < ApplicationRecord
  validates :name, uniqueness: true
  has_many :ratings
  has_many :comments
  has_many :tags

  def effective_rating
    rating = ratings.where(name: 'effective').average('value')
    return rating.round(1) if rating
    0
  end

  def usable_rating
    rating = ratings.where(name: 'usable').average('value')
    return rating.round(1) if rating
    0
  end

  def intuitive_rating
    rating = ratings.where(name: 'intuitive').average('value')
    return rating.round(1) if rating
    0
  end

  def ratings_number
    ratings.where(name: 'effective').count
  end

  def comments_number
    comments.count
  end
end
