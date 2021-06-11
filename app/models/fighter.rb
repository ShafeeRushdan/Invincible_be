class Fighter < ApplicationRecord
    has_many :user_fighters
    has_many :users, through: :user_fighters

end
