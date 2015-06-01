class BlogsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show, :category]
    def index
        @blogs = Blog.paginate(:page => params[:page], per_page: 3).order('created_at DESC')
        @blog = Blog.new
        # All post categories
        @categories = Blog.categories
    end

    def new
        @blogs = Blog.all
        @blog = Blog.new
        author = Bio.all
        @authors = AuthorMaker.new(author).build
    end

    def create
        @blog = Blog.new(blog_params)
        author = Bio.all
        @authors = AuthorMaker.new(author).build
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
        @author = Bio.find_by_id(@blog.author)
        if @author.nil?
            @author = Bio.find_by_id(59)
        end

    end

    def edit
        @blogs = Blog.all
        @blog = Blog.friendly.find(params[:id])
        @author = Bio.find_by_id(@blog.author)
        author = Bio.all
        @authors = AuthorMaker.new(author).build
    end

    def update
        @blogs = Blog.all
        @blog = Blog.friendly.find(params[:id])

        if @blog.first_name.nil?
           @blog.author = 53
        end

        if @blog.update(blog_params)
            redirect_to :blogs
        else
            redirect_to :edit
        end
    end

    def destroy
        @blog = Blog.friendly.find(params[:id]).destroy
        redirect_to blogs_url
    end

    # Define search path
    def search
        @search_result = Project.search params[:search]
    end

    def category

        @categories = Blog.categories
        @blogs = Blog.where(category: params[:category])
    end

    # Defining accessible parameters of Blog model
    private
        def blog_params
          params.require(:blog).permit(:title, :content, :category, :id, :author, :blog_picture, :slug, :blurred_image, :share1, :share2)
        end
end
