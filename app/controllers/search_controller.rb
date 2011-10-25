class SearchController < ApplicationController
  
  def hashtag
    if params[:hashtag].blank?
      session.clear
    else 
      session[:users] = []
      session[:hashtag] = params[:hashtag]
      Twitter::Search.new.hashtag(session[:hashtag]).per_page(100).each do |tweet|
        session[:users] << tweet.from_user unless session[:users].include? tweet.from_user
      end
    end
  end

end
