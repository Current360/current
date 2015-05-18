class ProjectsController < ApplicationController
    def index
        @blogs = Blog.all.limit(4)
    end
end
