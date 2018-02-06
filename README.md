# PottermoreScraper

Welcome to Pottermore!! This is a Command Line Interface (CLI) based gem that gathers recent news articles related to the wizarding world of Harry Potter from www.pottermore.com and provides the user with a short text narrative on their choice of news item. 

In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/pottermore_scraper`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

To install from git use these instructions:

1-clone repo 
2-​'​cd​'​ into repo 
3-​'​bundle install​'​ 
4-run 'ruby bin/pottermore'

To install gem froem rubygems use these instructions: 

Add this line to your application's Gemfile:

```ruby
#gem 'pottermore_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pottermore_scraper

## Usage

- The user is presented with a menu to view the news articles. Type 'accio' or 1 to view the most recent news articles sorted by date.
- To view the text of the news item in more detail, type the number of the news article. 
- Typing 'exit' or 'evanesco' at any time will bring the user to the main menu or exit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MadrasGal/purnima-cli-app


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

