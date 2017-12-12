class Item < ApplicationRecord
  belongs_to :user
  has_many :comments

  acts_as_votable()
  paginates_per 20

  def num_likes
    get_likes.size
  end

  def num_comments
    comments.size
  end


  def item_created_at
    created_at.strftime("%A, %b %w, %Y")
  end


end
