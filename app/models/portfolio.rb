class Portfolio < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby On Rails") }
end
