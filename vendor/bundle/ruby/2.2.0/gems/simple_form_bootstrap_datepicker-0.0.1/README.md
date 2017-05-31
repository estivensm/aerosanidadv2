# Simple Form Bootstrap Datepicker

[![Gem Version](https://badge.fury.io/rb/simple-form-bootstrap-datepicker.svg)](http://badge.fury.io/rb/simple-form-bootstrap-datepicker)

Adds a bootstrap date picker for [Simple Form](https://github.com/plataformatec/simple_form).

Includes support for [Bootstrap](http://getbootstrap.com/components/#glyphicons), [FontAwesome](http://fortawesome.github.io/Font-Awesome/icons/), and [Foundation](http://zurb.com/playground/foundation-icon-fonts-3) icon libraries used in the bootstrap input group.

## Requirements
* [simple_form](https://github.com/plataformatec/simple_form)
* bootstrap ([sass](https://github.com/twbs/bootstrap-sass) / [less](https://github.com/metaskills/less-rails-bootstrap))
* [bootstrap-datepicker-rails](https://github.com/Nerian/bootstrap-datepicker-rails)

## Optional
* [font-awesome-rails](https://github.com/bokmann/font-awesome-rails)
* [foundation-icons-sass-rails](https://github.com/zaiste/foundation-icons-sass-rails)

## Installation

Add it to your Gemfile:
```ruby
gem 'simple_form_bootstrap_datepicker'
```

Run the following command to install it:
```console
bundle install
```

Run the generator:
```console
rails generate simple_form_bootstrap_datepicker:install
```

## Usage

```erb
<%= simple_form_for @user do |f| %>
  <%= f.input :start_date, as: :date_picker, wrapper: date_picker, input_html: {icon: :bs} %>
  <%= f.button :submit %>
<% end %>
```

A default placeholder is added `mm/dd/yyyy` if one is not specified. There are currently three icon libraries which can be specified with `:bs` for bootstrap, `:fa` for font-awesome, and `:fi` for foundation. If an icon library isn't specified then a default `Date` will be added the icon section.

## Contributing

1. Fork it ( https://github.com/arian-amador/biostars-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
