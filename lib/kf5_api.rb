require "kf5_api/version"
require "kf5_api/configuration"
require "kf5_api/base"
require "kf5_api/organization"
require "kf5_api/user"
require "kf5_api/kchat"

module Kf5Api
  class << self
    def setup
      yield config
    end

    def config
      @config ||= Configuration.new
    end
  end
end
