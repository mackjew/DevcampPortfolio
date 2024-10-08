class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
    acts_as_list

    # include Placeholder
    # after_initialize :set_defaults
    validates_presence_of :title, :body, :main_image, :thumb_image

    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    def self.angular
        where(subtitle: "Angular")
    end

    def self.by_position
        order("position ASC")
    end

    scope :ruby_on_rails_portfolio_items, -> {
        where(subtitle: "Angular")
    }
end
 