$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
ENV['AUTH_TOKEN'] = "you-got-credentials"

require 'rubygems'
require 'bundler/setup'
require 'denotificator'
