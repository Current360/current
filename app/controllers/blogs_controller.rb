class BlogsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
        @blogs = Blog.paginate(:page => params[:page], per_page: 3)
        @blog = Blog.new
        # All post categories
        @categories = Blog.categories
    end

    def new
        @blogs = Blog.all
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            flash['Blog Saved']
            redirect_to @blog
        else
            redirect_to new_blog_path
        end
    end

    def show
        # Individual Post Data
        @blog = Blog.friendly.find(params[:id])
        # 5 posts of the individual post category
        @relatedPosts = Blog.where(category: @blog.category).limit(5).offset(1)
        # All post categories
        @categories = Blog.categories
    end

    def edit
        @blogs = Blog.all
        @blog = Blog.friendly.find(params[:id])
    end

    def update
        @blogs = Blog.all
        @blog = Blog.friendly.find(params[:id])

        if @blog.update(blog_params)
            redirect_to :blogs
        else
            redirect_to :edit
        end
    end

    def category

        @categories = Blog.categories
        @blogs = Blog.where(category: params[:category])
    end

    # Defining accessible parameters of Blog model
    private
        def blog_params
          params.require(:blog).permit(:title, :content, :category, :id, :author, :blog_picture, :slug)
        end
end
