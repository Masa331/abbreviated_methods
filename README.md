# AbbreviatedMethods

**Call your object's methods by all its possible abbreviations**

[![asciicast](https://asciinema.org/a/35311.png)](https://asciinema.org/a/35311)

## How to call your methods by their abbreviations

```ruby
require 'abbreviated_methods'

class Dog
  include AbbreviatedMethods

  def name
    'Fred'
  end
end

dog = Dog.new

dog.name => 'Fred'
dog.nam => 'Fred'
dog.na => 'Fred'
```

## About

Did you know about [Abbrev](http://ruby-doc.org/stdlib-2.3.0/libdoc/abbrev/rdoc/Abbrev.html) class in Ruby's standard library? I discovered it while browsing through ruby docs. I really like it but i couldn't think of any useful use-case in the moment. So i was just playing a bit :). More in this post: [post](http://masa331.github.io/2016/02/01/ruby_abbrev_from_standard_lib.html)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

