class AdminController < ApplicationController
  def signIn
   session[:sign_in]=nil
   if request.post?
       if params[:account]=='hongyou29157199' and params[:password]=='2915719929157199'
         session[:sign_in]='hongyou29157199'
         #uri=session[:original_uri]
         #session[:original_uri]=nil
         redirect_to jobs_path
       else
         flash.now[:title]="登入"         
         flash.now[:notice]="錯誤的帳號或密碼"
       end
    end    
  end
end
