module Kf5Api
  class Organization
    extend Kf5Api::Base
    private_class_method :new
    # http://developer.kf5.com/restfulapi/core/organizations

    ACTIONS_HASH = {
      all: '/apiv2/organizations'
    }

    class << self
      def all(query_params = {})
        get(ACTIONS_HASH[:all], query_params).parsed_response
      end
    end
  end
end
