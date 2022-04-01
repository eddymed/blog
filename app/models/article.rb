class Article < ApplicationRecord
    validates :title, presence: true, length: { minumum: 3, maximum: 60}
    
    validates :description, presence: true, length: { minumum: 10, maximum: 500}
end
