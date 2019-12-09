class TweetsController < ApplicationController
  def index
  end

  def login
    @response = request.env['omniauth.auth']
    session[:username] = @response[:info][:nickname]
    session[:token] = @response[:credentials][:token]
    session[:token_secret] = @response[:credentials][:secret]
    redirect_to tweets_path
  end
  
end
