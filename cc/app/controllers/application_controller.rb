class ApplicationController < ActionController::Base
  protect_from_forgery
#before_filter :authenticate, :except => ['login', 'index', 'show', 'new', 'about', 'contact']
    def authenticate
      if session[:member_id].nil?
        flash[:alart] = 'you need to login, before proceed.'
        redirect_to :controller => 'admin', :action => 'login'
      end
    end
end
