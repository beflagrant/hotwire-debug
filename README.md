# Hotwire::Debug

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/hotwire/debug`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hotwire-debug'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hotwire-debug

## Usage

This gem adds assets into your applications vendor assets javascripts/stylesheets directories.

Update your `application.js`
```js
//= require hotwire-debug
```

Update your `application.css`
```css
/*
*= require hotwire-debug
*/
```

If your application does not already include stylesheets and javascripts in the layout, add them.

```erb
    <%= stylesheet_link_tag 'application', media: 'all' %>
    <%= javascript_include_tag 'application', media: 'all' %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/beflagrant/hotwire-debug. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hotwire::Debug project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/beflagrant/hotwire-debug/blob/master/CODE_OF_CONDUCT.md).
