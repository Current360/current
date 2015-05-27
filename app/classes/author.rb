class Author
    def initialize(name, id, pic)
        @name = name
        @id = id
        @pic = pic
    end

    private
        def author_params
            params.require(:author).permit(:name, :id, :pic)
        end
end