require 'uuid'

module SimpleEmailTracker
  class Visit < ActiveRecord::Base
    before_create :set_uuid

    scope :search, lambda{ |key| where('simple_email_tracker_visits.key like ?', "%#{key}%") }

    def self.get_by_key key
      key = key.join(".") if key.kind_of? Array
      et = self.find_or_create_by_key key
    end

    def visit_by request
      now = Time.now
      self.count += 1
      self.first_visited_at = now unless self.first_visited_at
      self.last_visited_at = now
      self.ip = request.ip
      self.user_agent = request.env["HTTP_USER_AGENT"]
      self.save
    end

    private
    def set_uuid
      self.uuid = UUID.new.generate
    end
  end
end
