class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

    def blogger_post_likes
        @blogger.posts.count do |post|
            post.likes
        end
    end

    def featured_post
        @featured_post = @blogger.posts.max_by {|post| post.likes }
    end

end
