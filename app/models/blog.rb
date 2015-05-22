class Blog < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: :slugged

    mount_uploader :blog_picture, BlogPictureUploader

    # Used as the Category Dropdowns
    enum category: [
                    :banking_and_financial,   # 0
                    :adult_beverages,   # 1
                    :casual_dining,     # 2
                    :healthcare,    # 3
                    :high_impact_retail,    # 4
                    :home_improvement,  # 5
                    :pet_care,  # 6
                    :philanthropic,    # 7
                    :education,   # 8
                    :fitness_and_wellness ,    # 9
                    :festivals_and_events,    #10
                    :other    #11
    ]

    def self.featuredBlog
        id = Blog.pluck(:id).shuffle.sample
        @featuredBlog = Blog.find(id)
    end
end
