### Status
[![Build Status](https://travis-ci.org/aelor/ruby-pubg.svg?branch=master)](https://travis-ci.org/aelor/ruby-pubg)
[![Gem Version](https://badge.fury.io/rb/ruby-pubg.svg)](https://badge.fury.io/rb/ruby-pubg)

# ruby-pubg

A ruby wrapper for the PLAYERUNKNOWN'S BATTLEGROUNDS stats API from https://pubgtracker.com.
Get details about the gem at https://rubygems.org/gems/ruby-pubg

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-pubg'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-pubg

## Usage

#### Obtain API Key

Create an account at https://pubgtracker.com/site-api and request an API Key.

```ruby
#to initialize the client
client = Ruby::Pubg::Client.new('YOUR-API-KEY-HERE')
```
#### Start making calls
```ruby
#find nick name of user from steamid
client.find_name_by_steam_id('STEAMIDGOESHERE')

#find stats with the nick name
client.find_by_name('NAMEGOESHERE')

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aelor/ruby-pubg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
