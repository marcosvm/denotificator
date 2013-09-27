require 'newrelic_rpm'

NEWRELIC_OPTIONS = {
  license_key: ENV['NEWRELIC_LICENSE_KEY'],
  app_name: "Denotificator",
}

NewRelic::Agent.manual_start NEWRELIC_OPTIONS
