class Blog < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    enum status: { draft: 0, published: 1 }

    validates_presence_of :title, :body

    belongs_to :topic
end
