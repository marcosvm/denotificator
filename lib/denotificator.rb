require "denotificator/version"
require "denotificator/runtime"
require "denotificator/api_client"

module Denotificator
  def self.auth_token
    unless defined? @@auth_token
      @@auth_token = nil
    end
    @@auth_token
  end

  def self.auth_token=(token)
    @@auth_token = token
  end
end

Denotificator.auth_token = ENV['AUTH_TOKEN']
