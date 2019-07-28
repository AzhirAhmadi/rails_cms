class HomeController < ApplicationController
  def show
    @featured_pages = Page.where("featured = true && is_published = true")
    @pages = Page.where("featured = false && is_published = true")
  end
end
