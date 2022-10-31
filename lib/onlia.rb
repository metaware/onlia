require "onlia/version"
require "onlia/configuration"
require "onlia/client"

module Onlia
  class Error < StandardError; end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
