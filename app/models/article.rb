class Article < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["body", "created_at", "id", "id_value", "title", "updated_at"]
    end

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
