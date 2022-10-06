module Onlia
  class Configuration
    class EnvironmentMismatch < StandardError; end

    attr_accessor :environment, :base_url, :api_key

    ENVIRONMENT_MAP = {
      "production" => "https://api.onlia.ca/api/v1",
      "development" => "https://test-api.onlia.ca/api/v1",
    }

    def initialize
      @environment = "production"
      @base_url = ENVIRONMENT_MAP[@environment]
      @api_key = ""
    end

    def environment=(environment)
      raise EnvironmentMismatch, "#{@environment} is an invalid environment value" if ENVIRONMENT_MAP[environment].nil?

      @environment = environment
      @base_url = ENVIRONMENT_MAP[@environment]
    end
  end
end
