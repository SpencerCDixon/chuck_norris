# ChuckNorris

ChuckNorris is a light weight Ruby wrapper around the Chuck Norris Joke API [found
here](http://www.icndb.com/api/).  It contains a series of Chuck Norris jokes
which can be customized with an individuals first and last name.

## Usage

#### Getting Random Joke
Jokes have an id, joke, and categories you can query.
```
joke = ChuckNorris::JokeFinder.get_joke
joke.id # => 497
joke.joke # => "If Chuck Norris writes code with bugs, the bugs fix themselves." 
joke.categories # => ["nerdy"]
```

You can customize the name of the person in the joke by passing in the
`first_name` and `last_name` as options:

```
joke = ChuckNorris::JokeFinder.get_joke(first_name: 'Spencer', last_name: 'Dixon')
joke.joke # => "Spencer Dixon doesn't read books. He stares them down until he gets the information he wants."
```


#### Getting Multiple Jokes
You can get multiple jokes by passing the number you want as an argument to the
`ChuckNorris.get_jokes` method. **NOTE** the `s` at the end.

```
jokes = ChuckNorris::JokeFinder.get_jokes(3)
jokes[0].joke 
# => "When Chuck Norris throws exceptions, it's across the room."

jokes[1].joke 
# => "The only sure things are Death and Taxes and when Chuck Norris goes to work for the IRS, they'll be the same thing." 

jokes[2].joke 
# => 
```

#### Finding Specific Joke
You can fetch a specific joke by its `id`

```
bug_joke = ChuckNorris::JokeFinder.find_joke(497)
bug_joke.joke # => "If Chuck Norris writes code with bugs, the bugs fix themselves." 
```

#### Fetching Joke Categories
```
categories = ChuckNorris::JokeFinder.joke_categories
```

#### Fetching Total Number Of Jokes
```
total = ChuckNorris::JokeFinder.joke_count
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chuck_norris'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chuck_norris


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/chuck_norris/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
