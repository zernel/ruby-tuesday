# Ruby-Tuesday

## Description
Ruby-Tuesday is a light weight plaform for rubyist organize the
Ruby-Tuesday party. It is in developing.

## Requirements
 * You need to install Ruby1.9.2+ and bundler first.
 * Install and start MongoDB.

## Setup Guide
If you are using RVM, run  `cp .rvmrc.example .rvmrc`.

```ruby
cp config/mongoid.yml.default config/mongoid.yml
cp config/config.yml.default config/config.yml
```

and run `bundle install`

Done. Run `rails s` , open your browser and visit `http://localhost:3000`

## License

Dual licensed under the [MIT](http://www.opensource.org/licenses/mit-license.php) and [GPL](http://www.gnu.org/licenses/gpl.html) licenses.
