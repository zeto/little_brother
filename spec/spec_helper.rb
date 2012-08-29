# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require 'active_record'
require 'active_support'
#require 'rspec/rails'


class TestApplicationController < ApplicationController

	include LittleBrother::Record

	#instance variable for watch_user
  def watch_user
    @watch_user = "John Doe"
  end
  helper_method :current_user

  def index
  	render :text => "OK"
  end

end