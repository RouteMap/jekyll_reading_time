# jekyll_reading_time

[![Gem Version](https://badge.fury.io/rb/jekyll_reading_time.svg)](http://badge.fury.io/rb/jekyll_reading_time)

Display in your Jekyll posts and pages how long it'll take to read their content.

## Installation

Add this gem to your Jekyll installation's `Gemfile`:

```ruby
gem 'jekyll_reading_time', '~> 0.1.1'
```

Next, add the plugin to the `plugins` key in Jekyll's `_config.yml`:

```yml
gems: [jekyll_reading_time]
```

## Usage

Add to your layout, piping your page or post's content into the `reading_time` filter, and it'll return roughly how long it'll take to read your content, assuming a pace of 180 words per minute.

We'll return "about 1 minute" if it'll take a minute or less, or otherwise "about *n* minutes", where *n* is how long we think it'll take.

```html
<p>{{ page.content | reading_time }}</p>
```

## Configuration

We'll assume that people read at a pace of 180 words per minute, but this is customisable. You can also customise the words we translate English as "about", "minute" and "minutes".

To set your own options, add a section like this to your Jekyll `_config.yml`:

```yml
reading_time:
  words_per_minute: 150
  translations:
    about: etwa
    minute: minute
    minutes: minuten
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/routemap/jekyll_reading_time. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
