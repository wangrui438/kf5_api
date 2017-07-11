module Kf5Api
  class UserField
    extend Kf5Api::Base
    private_class_method :new
    # http://developer.kf5.com/restfulapi/core/user_fields/

    ACTIONS_HASH = {
      all: '/apiv2/user_fields',
      active: '/apiv2/user_fields/active',
      user_fields: '/apiv2/user_fields/%{id}'
    }

    class << self
      # 用户自定义字段列表
      def all(query_params = {})
        get(ACTIONS_HASH[:all], query_params).parsed_response
      end

      # 获取状态为启用的自定义字段列表
      def active(query_params = {})
        get(ACTIONS_HASH[:active], query_params).parsed_response
      end

      # 查看用户自定义字段
      def field_by_id(id)
        action = format(ACTIONS_HASH[:user_fields], id: id)
        get(action).parsed_response
      end
    end
  end
end
