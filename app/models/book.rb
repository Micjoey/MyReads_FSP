class Book < ApplicationRecord
    validates :title, :genre, :author, presence: true

    has_many :onshelfbooks,
    foreign_key: :book_id,
    class_name: :OnShelfBook

    has_many :reviews,
    foreign_key: :book_id,
    class_name: :Review

    has_many :users,
    through: :onshelfbooks,
    source: :user

    has_many :shelves,
    through: :onshelfbooks,
    source: :shelve
   
end

