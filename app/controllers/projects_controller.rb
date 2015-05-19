class ProjectsController < ApplicationController
    def index
        # Blog roll for related post
        # NEED TO SWITCH TO CASESTUDY CATEGORY LOOKUP ONCE POSSIBLE
        @blogs = Blog.all.limit(4)
    end

    def new
        @projects = Project.all
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        if project.save
            redirect_to @project
        else
            redirect_to new_project_path
        end
    end

    def show
        @project = Project.find(params[:id])
        # @relatedPosts = Project.where(category: @project.category).limit(4)
        @categories = Project.categories
    end

    def edit
        @projects = Project.all
        @project = Project.find(params[:id])
    end

    def update
        @projects = Project.all
        @project = Project.find(params[:id])

        if @project.update(project_params)
            redirect_to :projects
        else
            redirect_to :edit
        end
    end

    def category
        @categories = Project.categories
        @projects = Project.where(category: params[:category])
    end

    private
        def project_params
            params.require(:project).permit(:title, :challenge, :insight, :solution, :results, :quote, :cite, :category, :main_image, :side_image1, :side_image2, :capability, :logo)
        end
end
