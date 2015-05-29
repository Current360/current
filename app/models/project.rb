class Project < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history]

    mount_uploader :main_image, MainImageUploader
    mount_uploader :logo, LogoUploader
    mount_uploader :landing_image, LandingImageUploader
    mount_uploader :side_image1, SideImage1Uploader
    mount_uploader :side_image2, SideImage2Uploader

    # Used as the Category Dropdowns
    enum category: [
                    :banking_and_financial,   # 0
                    :adult_beverages,   # 1
                    :restaurant,     # 2
                    :healthcare,    # 3
                    :retail,    # 4
                    :home_improvement,  # 5
                    :pet_care,  # 6
                    :philanthropic,    # 7
                    # :education,   # 8
                    :fitness_and_wellness ,    # 9
                    :festivals_and_events,    #10
                    # :other    #11
    ]

    def self.featuredCaseStudy
        id = Project.pluck(:id).shuffle.sample
        @caseStudy = Project.find(id)
    end

    # Creating a search method
    def self.search(search)
        search_condition = '%' + search + '%'
        where('title LIKE ? OR content LIKE ? or category LIKE ?', search_condition, search_condition, search_condition)
    end
end
