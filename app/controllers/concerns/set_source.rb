module SetSource extend ActiveSupport::Concern

    included do
        before_action :set_source

    end

    # NOTE TO SELF
    # sometimes you want to reset a session. How to do that is dicussed here from stack overflow: https://stackoverflow.com/questions/2405635/how-to-empty-destroy-a-session-in-rails
    # another way to refresh session is using incognito window
    def set_source
        session.delete(:source) # deleting the key from the session object because otherwise the session[:source] value persists between reloads with/without the q param
        session[:source] = params[:q] if params[:q]
    end
end

