require "kf5_api/version"
require "kf5_api/configuration"
require "kf5_api/base"
require "kf5_api/organization"
require "kf5_api/user"
require "kf5_api/kchat"
require "kf5_api/user_field"
require "logger"

module Kf5Api
  class << self
    def setup
      yield config
    end

    def config
      @config ||= Configuration.new
    end

    def logger
      @logger ||= Logger.new(STDOUT)
    end

    def server
      "https://#{Kf5Api.config.sub_domain}.kf5.com"
    end
  end
end
