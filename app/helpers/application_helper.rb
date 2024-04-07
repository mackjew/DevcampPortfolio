module ApplicationHelper
    def sample_helper
        "<p> My Helper </p>".html_safe()
    end

    def login_helper
        if current_user.is_a?(User)
            # <!-- This code is functional with rails 7 and is based on Turbo. Apparently Turbo is meant to help build effective/modern web app frontends with out writing a ton of JS or messing with SPAs. More info on Turbo here: https://turbo.hotwired.dev/handbook/introduction -->
            link_to("Logout", destroy_user_session_path, data: { turbo_method: :delete } )
        else 
            (link_to('Register', new_user_registration_path, data: { turbo_method: :get }) ) +
            "<br>".html_safe() +
            (link_to('Login', new_user_session_path, data: { turbo_method: :get }) )
        end
    end
end
