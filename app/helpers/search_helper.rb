module SearchHelper
  def hashtag_link(hashtag)
    raw "<a href='http://twitter.com/#!/search/%23#{hashtag}'>##{hashtag}</a>"
  end

  def twitter_user_link(user)
    raw "<a href='http://twitter.com/#!/#{user}'>@#{user}</a>"
  end
end
