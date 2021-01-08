class User < ApplicationRecord
    validates :username, :password, :database, presence: true
end 