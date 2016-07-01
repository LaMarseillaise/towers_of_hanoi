# Towers of Hanoi

The Tower of Hanoi is a puzzle game created by Édouard Lucas in the 19th century. The goal is to move discs, which are of different sizes, from one of three pegs to another, by moving only one disc at a time and never placing a larger disc on top of a smaller one. This gem provides both an API for building this game and a CLI version of the game for demonstration.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'towers_of_hanoi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install towers_of_hanoi


## Usage

After this gem is installed, a command line demonstration of this game can be run with the following command:

```
$ towers_of_hanoi
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lamarseillaise/towers_of_hanoi.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
