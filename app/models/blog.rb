class Blog < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history]

    mount_uploader :blog_picture, BlogPictureUploader
    mount_uploader :blurred_image, BlurredImageUploader

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
                    :agency_life,
                    :tech_news,
                    :advertising_news
    ]

    def self.featuredBlog
        id = Blog.pluck(:id).shuffle.sample
        @featuredBlog = Blog.find(id)
    end

    # Creating a search method
    def self.search(search)
        search_condition = '%' + search + '%'
        where('title LIKE ? OR content LIKE ? or category LIKE ?', search_condition, search_condition, search_condition)
    end
end
