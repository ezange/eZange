class AdminController < ApplicationController
  def login
    if request.post?
      member = Member.find_by_user_name(params[:user_name])
      if ! member.nil? && member.password == params[:password]
        session[:member_id] = member.id
        redirect_to(:controller => 'admin', :action => 'index')
      else
        redirect_to :back#, :alart => "Invalid user name/password.")
        flash[:alert] = 'Invalid user name/password.'
        #redirect_to(:controller => 'admin', :action=> 'login')
      end  
    end
  end

  def logout
    session[:member_id] = nil
    redirect_to :controller => 'admin', :action => 'login'
  end
end
