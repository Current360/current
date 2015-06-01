class ReleasesController < ApplicationController
    def index
        @press = Release.last
        @recent = Release.all.offset(1)
    end

    def new
        @release = Release.new
    end

    def create
        @release = Release.new(release_params)
        if @release.save
           # flash
            redirect_to releases_path
        else
           # flash
            redirect_to :new
        end
    end

    def edit
        @release = Release.find(params[:id])
    end

    def update
        @release = Release.find(params[:id])

        if @release.update(release_params)
            # flash
            redirect_to releases_path
        else
            # flash
            redirect_to :edit
        end
    end

    private
        def release_params
            params.require(:release).permit(:title, :content)
        end
end
