module Kf5Api
  class Kchat
    extend Kf5Api::Base
    private_class_method :new
    # http://developer.kf5.com/restfulapi/kchat/history

    ACTIONS_HASH = {
      history: '/apiv2/kchat/history',
      chat: '/apiv2/kchat/history/%{id}'
    }

    class << self
      # 对话列表
      def history(query_params = {})
        get(ACTIONS_HASH[:history], query_params).parsed_response
      end

      # 查看对话
      def chat(chat_id)
        get(format(ACTIONS_HASH[:chat], id: chat_id)).parsed_response
      end
    end
  end
end
