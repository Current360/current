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

    # LANDING PAGES ACTIONS
    def banking
        @blogs = Blog.where(category: 0).limit(4)
        @caseStudy = Project.where(category: 0).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def beverages
        @blogs = Blog.where(category: 1).limit(4)
        @caseStudy = Project.where(category: 1).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def dining
        @blogs = Blog.where(category: 2).limit(4)
        @caseStudy = Project.where(category: 2).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def healthcare
        @blogs = Blog.where(category: 3).limit(4)
        @caseStudy = Project.where(category: 3).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def retail
        @blogs = Blog.where(category: 4).limit(4)
        @caseStudy = Project.where(category: 4).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def improvement
        @blogs = Blog.where(category: 5).limit(4)
        @caseStudy = Project.where(category: 5).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def pet
        @blogs = Blog.where(category: 6).limit(4)
        @caseStudy = Project.where(category: 6).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def philanthropic
        @blogs = Blog.where(category: 7).limit(4)
        @caseStudy = Project.where(category: 7).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def education
        @blogs = Blog.where(category: 8).limit(4)
        @caseStudy = Project.where(category: 8).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def fitness
        @blogs = Blog.where(category: 9).limit(4)
        @caseStudy = Project.where(category: 9).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def festivals
        @blogs = Blog.where(category: 10).limit(4)
        @caseStudy = Project.where(category: 10).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end

    def other
        @blogs = Blog.where(category: 11).limit(4)
        @caseStudy = Project.where(category: 11).first
        @categories = Project.categories
        @bio = Bio.find(1)

    end


    private
        def project_params
            params.require(:project).permit(:title, :challenge, :insight, :solution, :results, :quote, :cite, :category, :main_image, :side_image1, :side_image2, :capability, :logo)
        end
end
