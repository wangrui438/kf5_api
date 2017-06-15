module Kf5Api
  class User
    extend Kf5Api::Base
    private_class_method :new
    # http://developer.kf5.com/restfulapi/core/users

    ACTIONS_HASH = {
      users_by_org: '/apiv2/organizations/%{id}/users'
    }

    class << self
      # 获取某个组织下的所有用户
      def users_by_organization(org_id, query_params = {})
        action = format(ACTIONS_HASH[:users_by_org], id: org_id)
        get(action, query_params).parsed_response
      end
    end
  end
end
