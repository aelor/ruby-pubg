<<<<<<< HEAD
# ruby-pubg

A ruby wrapper for the PLAYERUNKNOWN'S BATTLEGROUNDS stats API from https://pubgtracker.com

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

###Obtain API Key

Create an account at https://pubgtracker.com/site-api and request an API Key.

```ruby
#to initialize the client
client = Ruby::Pubg::Client.new('your-api-key-here')

#find nick name of user from steamid
client.find_name_by_steam_id('STEAMIDGOESHERE')

#find stats with the nick name
client.find_by_name('NAMEGOESHERE')

```
TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aelor/ruby-pubg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
