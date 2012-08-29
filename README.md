# LittleBrother

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'little_brother'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install little_brother

Run the generation

		$ rails generation little_brother_setup

This will create the migration`timestamp_create_watchers.rb` so you can create the table `watchers`
Run the migration

		$ rake db:migrate

## Usage

Just grab the controller you want to keep track of the actions executed and include the module `include LittleBrother::Record` to start recording.

```erb
class ApplicationController < ApplicationController

	include LittleBrother::Record

	...

end
```

# User oriented recording
If you want to keep track of the user that triggers the actions, you have to supply a `watch_user` method in the controller.

```erb
  def watch_user
    @watch_user = "John Doe"
  end
```