require 'rails/generators'
require 'rails/generators/migration'

class LittleBrotherSetupGenerator < Rails::Generators::Base

  include Rails::Generators::Migration
  source_root File.expand_path('../../../../', __FILE__)
  
  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end  
  
  def migration
    unless watchers_table_exists? # SOURCE -> DESTINATION
      puts "* watchers table creation migration was created!"
      puts "* run rake db:migrate"
      migration_template "db/migrate/create_watchers.rb", "db/migrate/create_watchers.rb"
    end
  end  
  
  def watchers_table_exists?
    ActiveRecord::Base.connection.table_exists?(:watchers)
  end  
end