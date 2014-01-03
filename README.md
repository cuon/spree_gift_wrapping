# Welcome to SpreeGiftWrapping extension

This project is spree plugin for gift wrapping option when checkout order.
This project rocks and uses MIT-LICENSE.

## Requirements

rails 4.0.x
spree 2.1.x

## Getting started
You can add this gem into your Gemfile with:
```ruby
gem 'spree_gift_wrapping', github: 'cuon/spree_gift_wrapping'
```
Run the bundle command to install it.
After you install gem and add it to your Gemfile, you need to run the generator:
```console
rails generate spree_gift_wrapping:migration
```
The generator will create migration files for spree_gift_wrapping gem.
When you are done, you have to run migration task.
```console
bundle exec rake db:migrate
```

Done.

## TODO
Testing spec.



