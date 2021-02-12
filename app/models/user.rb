class User < ApplicationRecord
    validates :username, uniqueness: true, :length => { :minimum => 2 }, presence: true
    validates :email, uniqueness: true, :length => { :minimum => 2 }, presence: true
    validates :password, :length => { :minimum => 4 }, presence: true

    has_many :posts
    has_many :comments
end