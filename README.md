# i18n-toml

A quick bridge to use [TOML](https://toml.io/en/) files as I18n translations in Ruby on Rails applications.

Using TOML for translations has some nice benefits over the traditional YAML format:

- TOML does not require indentation, which can be error-prone and tedious in YAML.
- TOML can define namespaces which resemble the learned structure of Rails I18n.
- TOML does not restrict the use of comments, which can be useful for documenting translations.
- TOML supports multiple top-level keys, which can be useful for organizing translations by topic rather than by locale.

# Example

```toml
# config/locales/translations.toml
[en.welcome.header]
title = "Welcome to %{app_name}!"
subtitle = "The best place to be."

[de.welcome.header]
title = "Willkommen bei %{app_name}!"
subtitle = "Der beste Ort zum sein." # Thank you copilot for this shiny example :trollface:
```

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add i18n-toml
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install i18n-toml
```

## Usage

No need for any setup, just start placing .toml files in the `config/locales` directory of your Rails application.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xijo/i18n-toml
