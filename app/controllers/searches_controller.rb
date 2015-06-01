class SearchesController < ApplicationController
    def index
        search = '%' + params[:search] + '%'

        @blogs = Blog.where('title LIKE ? OR content LIKE ? OR category LIKE ? OR author LIKE ?', search, search, search, search)
        @bios = Bio.where('first_name LIKE ? OR last_name LIKE ? OR overview LIKE ? OR real_title LIKE ?', search, search, search, search)
        @projects = Project.where('title LIKE ? OR challenge LIKE ? OR insight LIKE ? OR solution LIKE ? OR results LIKE ? OR quote LIKE ? OR cite LIKE ?', search, search, search, search, search, search, search)
        @releases = Release.where('title LIKE ? OR content LIKE ?', search, search)

        count = 0
        if @blogs.present?
            count += 1
        end
        if @bios.present?
           count += 1
        end
        if @projects.present?
           count += 1
        end
        if @releases.present?
           count += 1
        end
        @count = count
        @search = params[:search]
    end
end
