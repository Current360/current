class Picture

    # Turn the variables into accessable methods
    # Is this the old way of doing this???????
    attr_accessor :url, :caption, :likes

    def initialize(url, caption, likes)
        @url = url
        @caption = caption
        @likes = likes
    end

    # Jumble up the Instagram and Dribbble feeds
    def randomize

    end


end