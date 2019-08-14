require "archiver/version"

module Archiver
  class Error < StandardError; end
  class Archived < ActiveRecord::Base
    @archived_at = nil
    def archive
      t = time.new
      @archived_at = t.inspect
    end

    def restore
      @archived_at = nil
    end
    
    def archived?
      @archived_at != nil
    end
  end
end
