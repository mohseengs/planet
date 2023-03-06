class User < ApplicationRecord
    has_many :posts
    has_one_attached :profile_picture

end
