require 'httparty'

module Kf5Api
  module Base
    def get(action, query_params = {})
      server = "https://#{Kf5Api.config.sub_domain}.kf5.com"
      query_params = query_params.inject({}){ |memo, (k,v)| memo[k.to_s] = v; memo }

      HTTParty.get(server + action, query: query_params, basic_auth: basic_auth, header: { 'Content-Type' => 'application/json' })
    end

    def basic_auth(user_name = nil, password = nil, use_password = false)
      user_name ||= use_password ? Kf5Api.config.user_name : "#{Kf5Api.config.user_name}/token"
      password ||= use_password ? Kf5Api.config.password : Kf5Api.config.token
      { username: user_name, password: password }
    end
  end
end
