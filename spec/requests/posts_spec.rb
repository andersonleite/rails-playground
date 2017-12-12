require 'rails_helper'

RSpec.describe "Posts", :type => :request do
  describe "GET /feed" do
    it "returns all the posts" do

      # Generates:
      # [
      #   {"type":"Post",
      #   "content":"First Post",
      #   "author":
      #     {"type":"User","name":"Luke"},
      #   "comments":
      #     [{"type":"Comment",
      #     "author":{"type":"User","name":"Luke"},
      #     "content":"First comment"}]}
      # ]
      FactoryGirl.create(:post_with_comments)

      get '/feed?per_page=1&page=1'

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      post = body.map{|post| post['content'] }
      expect(post).to match_array(['First Post'])

      author = body.map{|post| post['author']['name'] }
      expect(author).to match_array(['Luke'])

      comment = body.map{|post| post['comments'][0]['content'] }
      expect(comment).to match_array(['First comment'])
    end
  end
end
