class PagesController < ApplicationController
    def index
        # ENTER BLOG ID FOR STATIC FEATURED BLOG
        # @featuredBlog = Blog.find(23)

        # WILL RANDOMLY SELECT A BLOG AND DISPLAY IT ON HOMEPAGE
        @featuredBlog = Blog.featuredBlog

        # ENTER CASESTUDY ID FOR STATIC FEATURED CASESTUDY
        # @caseStudy = Project.find(1)

        # WILL RANDOMLY SELECT A CASE STUDY TO FEATURE
        @caseStudy = Project.featuredCaseStudy

        @bios = Bio.homePageBios
    end

    def strategy
    end

    def contact
    end

    def culture
        instagram = Instagram.user_recent_media("4641505", {:count => 8}) #+ Instagram.user("4641505").tags("c360bowl")


        dribbble = Dribbble::Player.find('Current360').shots +
                   Dribbble::Player.find('DonovanSears').shots +
                   Dribbble::Player.find('JimDeweese').shots +
                   Dribbble::Player.find('DBonifer').shots

        @pictures = InstagramPictureMaker.new(instagram).pictures #+ DribbblePictureMaker.new(dribbble).pictures
        @relatedPosts = Blog.all.limit(3)
    end
end
