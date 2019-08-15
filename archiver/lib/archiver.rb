require "archiver/version"

module Archiver
    def archive
      update(archived_at: Time.now)
    end

    def restore
      update(archived_at: nil)
    end
    
    def archived?
      not archived_at.nil?
    end
end
