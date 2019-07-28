class ApplicationController < ActionController::Base
    before_action :get_page_nav, :get_jumbotron, :get_block

    protect_from_forgery with: :exception

    def get_page_nav
        @pageNav =Page.where("menu_display = true && is_published = true").order(order: :asc)
    end

    def get_jumbotron
        @jumbotron=Block.where("position = 'jumbotron'").order(order: :asc)
    end

    def get_block
        @blocks=Block.where("position = 'block'").order(order: :asc)
    end
end
