module Kf5Api
  class User
    extend Kf5Api::Base
    private_class_method :new
    # http://developer.kf5.com/restfulapi/core/users

    ACTIONS_HASH = {
      users_by_org: '/apiv2/organizations/%{id}/users',
      edit: '/apiv2/users/%{id}',
      search: '/apiv2/users/search'
    }

    class << self
      # 获取某个组织下的所有用户
      def users_by_organization(org_id, query_params = {})
        action = format(ACTIONS_HASH[:users_by_org], id: org_id)
        get(action, query_params).parsed_response
      end

      # 修改用户信息
      def edit(id, attributes = {})
        action = format(ACTIONS_HASH[:edit], id: id)
        put(action, attributes).parsed_response
      end

      # 查询用户信息
      # query为查询参数，模糊搜索(名称，邮箱，手机号，微信openid)
      def search(keyword)
        action = format(ACTIONS_HASH[:search])
        get(action, { query: keyword }).parsed_response
      end
    end
  end
end
