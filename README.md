# Capistrano::Git::DeleteRepo

When you change your repo_url, you will need to delete the `repo/` directory in your deploy path. This gem provides `cap [env] git:delete_repo` to delete the repo folder on all described servers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-git-delete_repo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-git-delete_repo

## Usage

Add the following to your application's Capfile:

```ruby
require 'capistrano/git/delete_repo'
```

Then, run `cap [env] git:delete_repo` to delete the repo folder on all described servers

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/will-in-wi/capistrano-git-delete_repo.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

