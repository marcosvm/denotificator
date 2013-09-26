require 'spec_helper'

describe Denotificator do
  it 'should have a version number' do
    Denotificator::VERSION.should_not be_nil
  end

  it 'reads your auth token from the environment' do
    Denotificator.auth_token.should_not be_nil
  end
end
