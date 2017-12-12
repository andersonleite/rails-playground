module Feed
  extend ActiveSupport::Concern

  def news_feed
    @posts = Post.includes(:author, comments: :author).limit(50)
    paginate json: @posts
  end

end
