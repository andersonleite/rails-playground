class NewsfeedController < ApplicationController
  include Feed

  # JSON endpoint that returns an array of Post objects in order of
  # newest first, to oldest last. Each Post contains a User object
  # (the author of the Post), and an array of Comments. Each Comment
  # will also include the User object of the Comment's author.
  def index
    news_feed
  end

end
