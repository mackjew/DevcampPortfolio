module PortfoliosHelper
    def source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
            content_tag(:p, greeting, class: "source-greeting" )
        end
    end

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: "600", width: "400")
        self.thumb_image ||= Placeholder.image_generator(height: "350", width: "200")
    end

    def image_generator(height:, width:)
        "https://place-hold.it/#{height}x#{width}"
    end

    def portfolio_img(img,type)
        if img.model.main_image? || img.model.thumb_image?
            img.to_s
        elsif type == 'thumb'
            image_generator(height: '350', width: '200')
        else
            image_generator(height: '600', width: '400')
        end
    end

end
