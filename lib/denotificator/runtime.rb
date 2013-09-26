require 'faraday'
require 'yajl/json_gem'

module Denotificator
  class Runtime

    attr_reader :api_client

    class << self
      def run!
        new.run!
      end
    end

    def initialize
      @api_client = APIClient.new "https://api.github.com",
        "denotificator/#{Denotificator::VERSION} (https://github.com/marcosvm/denotificator)",
      Denotificator.auth_token
    end

    def run!
      notifications = load_github_notifications
      process_notifications(notifications)
    end

    private

    def load_github_notifications
      response = api_client.get_http_response '/notifications'
      JSON.parse response.body
    end

    def process_notifications(notifications)
      notifications.each do |notification|

        id     = notification["id"]
        reason = notification["reason"]
        title  = notification["subject"]["title"]

        if reason == 'subscribed'
          subscription_uri = "/notifications/threads/#{id}/subscription"
          subscription_response = api_client.get_http_response subscription_uri
          if subscription_response.status == 404
            subscription_url = notification['subject']['url']
            puts "#{id}:unsubscribing at #{subscription_url} on #{title}"
            payload = { "subscribed" => false, "ignored" => true }.to_json

            api_client.put_http_response subscription_uri, payload
          end
        else
          puts "#{id}:#{reason}:#{title}"
        end

      end
    end

  end
end
