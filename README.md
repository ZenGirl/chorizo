# chorizo

## Introduction

Common Horizontal data - data that needs to be atomic and be available across applications

## Acknowledgements

## Usage

## Details

## Installation

Add this line to your application's Gemfile:

    gem 'JFormalize'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install JFormalize

## Testing

    clear; bundle exec rake; bundle exec rubocop

I used `minitest` for testing to reduce any external dependencies.

## Git

[Full details](./GitFlow.md)

[Bash details](./GitBash.md)

### Versioning

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, 
which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

This should only be done on the `master` branch.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ZenGirl/JFormalize. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to 
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


