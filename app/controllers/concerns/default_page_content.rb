module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults    
    end

    def set_page_defaults
        @page_title = "DevcampPortfolio | My Portfolio Website"
        @seo_keywords = "MacKenzie, Jew, Portfolio, location, based, messaging, social, network, service, nearby, friends, community, neighborhood, local, events"
    end
end
