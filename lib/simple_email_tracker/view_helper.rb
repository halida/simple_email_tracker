module SimpleEmailTracker
  module ViewHelper
    def set_email_tracker *args
      et = SimpleEmailTracker::Visit.get_by_key args
      image_tag "/email_trackers/#{et.uuid}/t.gif"
    end
  end
end
