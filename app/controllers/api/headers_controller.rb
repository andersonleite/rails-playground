module Api
  class HeadersController < ApplicationController
    def show
      render :json => Header.first
    end
  end
end
