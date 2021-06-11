class User < ApplicationRecord

    has_many :user_fighters
    has_many :fighters, through: :user_fighters
end
