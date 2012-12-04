module SimpleEmailTracker
  class EmailTrackersController < ::ApplicationController

    def show
      v = Visit.find_by_uuid params[:uuid]
      v.visit_by request
      send_file(
           File.expand_path("../../../assets/images/t.gif", __FILE__),
           filename: "t.gif",
           type: "image/pdf")
    end

  end
end
