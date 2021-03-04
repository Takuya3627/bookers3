class Book < ApplicationRecord

  belongs_to :user
  has_many :book_comments, dependent: :destroy

  validates :title,
            presence: true
  validates :body,
            presence: true,
            length: { minimum: 0, maximum: 200 }

end