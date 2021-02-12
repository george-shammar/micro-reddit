class Comment < ApplicationRecord
    validates :message, :length => { :minimum => 2 }

    belongs_to :post
    belongs_to :user
end
