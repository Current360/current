class DribbblePictureMaker
    def initialize(dribbble)
        @dribbble = dribbble
    end

    def pictures
        @dribbble.map do |dribbble|
            Picture.new(dribbble.image_url, dribbble.description, dribbble.likes_count)
        end
    end
end