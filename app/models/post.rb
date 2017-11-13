class Post < ApplicationRecord
    belongs_to :category
    has_many :comments
    limit(5).order("id DESC")

    def self.filter(args)
        out = []
        if args[:category_id].present?
            out = Post.where(["category_id = ?", args[:category_id]]).limit(5).order("id DESC")
        else
            out = Post.limit(5).order("id DESC")
        end
    end
end