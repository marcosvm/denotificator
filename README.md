# Denotificator

Denotificator unsubscribes you from the GitHub notifications where you aren't directed mentioned.

It uses the [GitHub Notifications API](http://developer.github.com/v3/activity/notifications/) in an effort to make your Inbox sane again.

You can create your GitHub authentication token following [this](https://help.github.com/articles/creating-an-access-token-for-command-line-use) instructions.

[![Build Status](https://travis-ci.org/marcosvm/denotificator.png)](https://travis-ci.org/marcosvm/denotificator)

## Installation

Or install it yourself as:

    $ gem install denotificator

## Usage

```shell
AUTH_TOKEN=your_token_here denotificator
```

To enable New Relic support add the environment variable NEWRELIC_LICENSE_KEY:

```shell
AUTH_TOKEN=your_token_here NEWRELIC_LICENSE_KEY=new_relic_key denotificator
```

You can run it manually or add it to a cronjob for it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
