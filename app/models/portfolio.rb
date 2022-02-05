class Portfolio < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
end
