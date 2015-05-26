class ProjectsController < ApplicationController
   before_action :authenticate_user!,
   except: [
        :index, :show, :other, :festivals, :fitness, :education,
        :philanthropic, :pet, :improvement, :retail, :healthcare,
        :dining, :beverages, :banking, :category ]

    def index
        # Blog roll for related post
        # NEED TO SWITCH TO CASESTUDY CATEGORY LOOKUP ONCE POSSIBLE
        @blogs = Blog.all.limit(4)
        @projects = Project.all
    end

    def new
        @projects = Project.all
        @project = Project.new

        @categories = Post.categories
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            redirect_to @project
        else
            redirect_to new_project_path
        end
    end

    def show
        @project = Project.friendly.find(params[:id])
        # @relatedPosts = Project.where(category: @project.category).limit(4)
        @categories = Project.categories
    end

    def edit
        @projects = Project.all
        @project = Project.friendly.find(params[:id])
    end

    def update
        @projects = Project.all
        @project = Project.friendly.find(params[:id])

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
        @caseStudy = Project.where(category: 0).last
        @categories = Project.categories
        # HARRY
        @bio = Bio.friendly.find(44)

    end

    def beverages
        @blogs = Blog.where(category: 1).limit(4)
        @caseStudy = Project.where(category: 1).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end

    def dining
        @blogs = Blog.where(category: 2).limit(4)
        @caseStudy = Project.where(category: 2).last
        @categories = Project.categories
        # HARRY
        @bio = Bio.friendly.find(44)

    end

    def healthcare
        @blogs = Blog.where(category: 3).limit(4)
        @caseStudy = Project.where(category: 3).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end

    def retail
        @blogs = Blog.where(category: 4).limit(4)
        @caseStudy = Project.where(category: 4).last
        @categories = Project.categories
        # KATI
        @bio = Bio.friendly.find(56)

    end

    def improvement
        @blogs = Blog.where(category: 5).limit(4)
        @caseStudy = Project.where(category: 5).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end

    def pet
        @blogs = Blog.where(category: 6).limit(4)
        @caseStudy = Project.where(category: 6).last
        @categories = Project.categories
        # HARRY
        @bio = Bio.friendly.find(44)

    end

    def philanthropic
        @blogs = Blog.where(category: 7).limit(4)
        @caseStudy = Project.where(category: 7).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end

    def education
        @blogs = Blog.where(category: 8).limit(4)
        @caseStudy = Project.where(category: 8).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end

    def fitness
        @blogs = Blog.where(category: 9).limit(4)
        @caseStudy = Project.where(category: 9).last
        @categories = Project.categories
        # HARRY
        @bio = Bio.friendly.find(44)

    end

    def festivals
        @blogs = Blog.where(category: 10).limit(4)
        @caseStudy = Project.where(category: 10).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end

    def other
        @blogs = Blog.where(category: 11).limit(4)
        @caseStudy = Project.where(category: 11).last
        @categories = Project.categories
        # NICK
        @bio = Bio.friendly.find(35)

    end


    private
        def project_params
            params.require(:project).permit(:title, :challenge, :insight, :solution, :results, :quote, :cite, :category, :main_image, :side_image1, :side_image2, :capabilities, :logo)
        end
end
