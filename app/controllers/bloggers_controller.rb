class BloggersController < ApplicationController

    def index
        @bloggers = Blogger.all

        render :index
    end

    def show
        @blogger = Blogger.find(params[:id])

        render :show
    end



end