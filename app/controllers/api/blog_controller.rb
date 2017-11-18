module Api
  class BlogController < ApplicationController
    def index
      render :json => Blog.all
    end

    def create
      Blog.create(post_params)
    end

    private
    def post_params
      params.permit(:message)
    end

  end
end
