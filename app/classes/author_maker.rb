class AuthorMaker
    def initialize(author)
        @author = author
    end

    def build
        @author.map do | author |
            Author.new(author.first_name, author.id, author.bio_pic)
        end
    end
end