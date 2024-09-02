module ApplicationHelper
    def sample_helper
        content_tag(:div, "My Content", class: "my_class")
    end

    def login_helper(style = '')
        if current_user.is_a?(GuestUser)
            # <!-- This code is functional with rails 7 and is based on Turbo. Apparently Turbo is meant to help build effective/modern web app frontends with out writing a ton of JS or messing with SPAs. More info on Turbo here: https://turbo.hotwired.dev/handbook/introduction -->
            "<div>".html_safe() + (link_to('Register', new_user_registration_path, data: { turbo_method: :get }, class: style) ) + "</div>".html_safe() +
            " ".html_safe() +
            "<div>".html_safe() + (link_to('Login', new_user_session_path, data: { turbo_method: :get }, class: style) ) + "</div>".html_safe()
        else 
            link_to("Logout", destroy_user_session_path, data: { turbo_method: :delete }, class: style )
        end
    end

    def copyright_generator
        MjViewTool::Renderer.copyright('MacKenzie Jew', 'All rights reserved')
    end

    def nav_helper(html_class, tag_type)
      nav_links = ''
      nav_items().each do |item|
        nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{html_class} #{active?(item[:url])}'>#{item[:title]}</a></#{tag_type}>"
      end

      nav_links.html_safe();
    end

    def active?(path)
      "active" if current_page?(path)
    end

    def nav_items 
      [
        {
          url: root_path,
          title: "Home"
        },
        {
          url: about_me_path,
          title: "About Me"
        },
        {
          url: contact_path,
          title: "Contacts"
        },
        {
          url: blogs_path,
          title: "Blog"
        },
        {
          url: portfolios_path,
          title: "Portfolio"
        },
      ]
    end

    def alertsHelper
      alert = (flash[:alert] || flash[:error] || flash[:notice] )
      if(alert)
        return alertsHelper_generator(alert);
      end
    end

    def alertsHelper_generator(msg)
      js(add_gritter(msg, title: "MacKenzie Portfolio", time: 6000) )
    end

end
