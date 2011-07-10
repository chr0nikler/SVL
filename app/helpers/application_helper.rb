module ApplicationHelper
    def logo
      @logo = image_tag("logo.png", :alt => "Elrel", :class => "round")
    end
end
