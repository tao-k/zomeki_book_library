# ZomekiBookLibrary
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your zomeki application's Gemfile:

```ruby
gem 'member_list', path: '/var/www/member_list'
```

And then execute:
```bash
$ bundle install
```

Add this line to your zomeki application's routes.rb:
```ruby
mount ZomekiBookLibrary::Engine => '/'
```

Restart your zomeki application
```bash
$ bundle exec rake unicorn:restart RAILS_ENV=production
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
