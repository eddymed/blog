class Article < ApplicationRecord
    belongs_to :user 
    validates :title, presence: true, length: { minumum: 3, maximum: 50}
    
    validates :description, presence: true, length: { minumum: 10, maximum: 1000}
    validates :user_id, presence: true
end