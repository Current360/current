class InstagramPictureMaker
    def initialize(instagram)
        @instagram = instagram
    end

    def pictures
        @instagram.map do |instagram|
            Picture.new(instagram.images.standard_resolution.url, instagram.caption.text, instagram.likes.count)
        end
    end
end