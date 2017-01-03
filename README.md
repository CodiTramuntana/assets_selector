# AssetsSelect

This gem selects files to be added to Asset precompilation. Useful when copiling
assets directly in the production environment.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'assets_select'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install assets_select

## Usage

In your config/environments/production.rb environment file:
```ruby
...
# replace
# config.assets.precompile += %w( search.js )
# for
  config.assets.precompile << AssetsSelect::ASSETS_SELECTOR_PROC
...
```
That's it!

AssetsSelect is the result of many deployment problems and googling hours.

A recommendation is that you precompile assets locally before deploying and during deployment
you synchronize them to the production environment server.
But there are cases when projects are small and it may be easier to precompile assets directly.
Is in this cases when AssetsSelect may be useful.

## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


# License

PaperCropper is Copyright © 2017 CodiTramuntana SL. It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.

# About CodiTramuntana

![coditramuntana](http://www.coditramuntana.com/assets/ic_logo_medium.png)

Maintained by [CodiTramuntana](http://www.coditramuntana.com).

The names and logos for CodiTramuntana are trademarks of CodiTramuntana SL.

We love open source software!

