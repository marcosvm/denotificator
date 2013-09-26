module Denotificator
  class APIClient
    attr_reader :connection
    attr_reader :user_agent
    attr_reader :auth_token

    def initialize url, user_agent, auth_token
      @connection = Faraday.new url: url
      @user_agent = user_agent
      @auth_token = auth_token
    end

    def get_http_response uri
      connection.get uri do |request|
        request.headers['User-Agent'] = user_agent
        request.headers['Authorization'] = "token #{auth_token}"
      end
    end

    def put_http_response uri, payload
      connection.put uri do |request|
        request.headers['User-Agent'] = user_agent
        request.headers['Authorization'] = "token #{auth_token}"
      end
    end
  end
end
