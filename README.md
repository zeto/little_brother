# LittleBrother

Tracks and stores every action (controler:action pair) passed through the controller. 

The gem also supports user oriented tracking for more detailed/focus analysis.

Disclaimer: Little Brother this IS NOT Big Brother. :)

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

Require the module

    $ require 'little_brother'


Just grab the controller you want to keep track of the actions executed and include the module `include LittleBrother::Record` to start recording.

```erb
class ApplicationController < ApplicationController

	include LittleBrother::Record

	...

end
```

### User oriented recording
If you want to keep track of the user that triggers the actions, you have to supply a `watch_user` method in the controller.

```erb
class ApplicationController < ApplicationController

  include LittleBrother::Record

  def watch_user
    @watch_user = "John Doe"
  end
  ...

end
```

## Helpers
Some managment and statistics utils are provided to retrive the stored data

### Utils provided by `LittleBrother::Utils` module:


LittleBrother::Utils.truncate_watchers

LittleBrother::Utils.keep_only_last_months

LittleBrother::Utils.user_actions_in_timeframe


### Statistics provided by `LittleBrother::Statistics` module:

LittleBrother::Statistics.most_active_users

LittleBrother::Statistics.least_active_users

LittleBrother::Statistics.most_active_users_this_month

LittleBrother::Statistics.least_active_users_this_month

LittleBrother::Statistics.most_used_action

LittleBrother::Statistics.least_used_action

LittleBrother::Statistics.most_used_controller_action

LittleBrother::Statistics.least_used_controller_action