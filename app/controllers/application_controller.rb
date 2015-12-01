class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
  def authorize
    if session[:sign_in].blank?
      #session[:original_uri]=request.url      
      flash[:notice]="請先登入"      
      redirect_to controller: 'admin', action: 'signIn'
    end
  end     
end
