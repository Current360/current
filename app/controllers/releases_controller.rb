class ReleasesController < ApplicationController
    def new
        @release = Release.new
    end

    def create
        @release = Release.new(release_params)
        if @release.save
           # flash
            redirect_to @release
        else
           # flash
            redirect_to :new
        end
    end

    def edit
        @release = Release.find(params[:id])

        if @release.update(release_params)
            # flash
            redirect_to @release
        else
            # flash
            redirect_to :edit
        end
    end

    def update
    end

    private
        def release_params
            params.require(:release).permit(:title, :content)
        end
end
