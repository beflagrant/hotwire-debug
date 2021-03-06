# Hotwire::Debug
<img src="https://user-images.githubusercontent.com/8511/104638257-8fdc4900-566b-11eb-8230-c267d09c5de9.mov" style="width: 300px" alt="hotwire-debug v0.1.1 demo">

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

### Asset Pipeline

Run the generator:

```
bin/rails g hotwire_debug:install
```

If your application does not already include stylesheets and javascripts in the layout, add them.

```erb
    <%= stylesheet_link_tag 'application', media: 'all' %>
    <%= javascript_include_tag 'application', media: 'all' %>
```

### Webpacker

Run the generator:

```
bin/rails g hotwire_debug:webpacker
```

# Options

## Colorscheme
By default the color-scheme is a Hotwire-inspired teal and yellow. There's an alternate color scheme available. Add `data-hotwire-scheme-dark` to the root element.

## Postition

The default behavior is to appear in the lower right corner of the UI. You can change the vertical position by adding one of the following:

* `data-hotwire-debug-top`
* `data-hotwire-debug-middle`
* `data-hotwire-debug-bottom` [Default]

For hoizontal positioning you can apply to the root element:

* `data-hotwire-debug-left`
* `data-hotwire-debug-center`
* `data-hotwire-debug-right`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/beflagrant/hotwire-debug. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hotwire::Debug project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/beflagrant/hotwire-debug/blob/master/CODE_OF_CONDUCT.md).
