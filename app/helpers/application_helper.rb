module ApplicationHelper
    # Makes the Copyright year available at all times
    def year
        year = Time.new.strftime("%Y")
    end

    # Prints a default title if none provided
    def full_title(page_title)
        base_title = "Integrated Marketing, Branding, Social, Digital | Louisville, KY"
        if page_title.empty?
          base_title
        else
          page_title
        end
    end
end
