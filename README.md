# Array Decay

[![Build Status](https://travis-ci.org/sonnym/array_decay.png?branch=master)](https://travis-ci.org/sonnym/array_decay)
[![Code Climate](https://codeclimate.com/github/sonnym/array_decay.png)](https://codeclimate.com/github/sonnym/array_decay)

A simple way to prevent increasing memory usage when iterating over objects
that grow during their method calls, e.g. batch processing ActiveRecord objects
that require lots of associated data.

## Installation

Add this line to your application's Gemfile:

    gem 'array_decay'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array_decay

## Usage

Simply call the `#decay!` method on your array before enumerating. This
instantiates and returns an enumerable `ArrayDecay::Enumerator` which
will unshift elements of the array.

```ruby
moribund_objects.decay!.each do |item|
  item.perform_expensive_operation!
end

moribund_objects.count # 0
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
