class PostsController < ApplicationController

    def index
        @posts = Post.All
    end

    def show
        @post = Post.find(params[:id])
    end

    

end