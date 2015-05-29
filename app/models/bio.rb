class Bio < ActiveRecord::Base
    extend FriendlyId
    friendly_id :first_name, use: [:slugged, :history]

    mount_uploader :bio_pic, BioUploader
    mount_uploader :large_bio_pic, LargeBioPicUploader
    mount_uploader :mobile_bg, MobileBgUploader

    # USED TO TOGGLE DRIBBBLE SHOTS / INSTAGRAM ON THE INDIVIDUAL BIOS PAGES
    enum artist: [
        :no,
        :yes
    ]

    def self.homePageBios
        ids = Bio.pluck(:id).shuffle.sample(8)
        # max = ids.count

        # ids.map { |id| @bios = Bio.where(:id => id) }
        bio1 = Bio.where(:id => ids[0])
        bio2 = Bio.where(:id => ids[1])
        bio3 = Bio.where(:id => ids[2])
        bio4 = Bio.where(:id => ids[3])
        bio5 = Bio.where(:id => ids[4])
        bio6 = Bio.where(:id => ids[5])
        bio7 = Bio.where(:id => ids[6])
        bio8 = Bio.where(:id => ids[7])

        @bios = bio1 + bio2 + bio3 + bio4 + bio5 + bio6 + bio7 + bio8
    end

    # Creating a search method
    def self.search(search)
        search_condition = '%' + search + '%'
        where('title LIKE ? OR content LIKE ? or category LIKE ?', search_condition, search_condition, search_condition)
    end
end
