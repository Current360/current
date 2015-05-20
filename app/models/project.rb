class Project < ActiveRecord::Base
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

    def self.featuredCaseStudy
        id = Project.pluck(:id).shuffle.sample
        @caseStudy = Project.find(id)
    end
end
