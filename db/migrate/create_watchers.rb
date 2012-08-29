class CreateWatchers < ActiveRecord::Migration
  def self.up
    create_table(:watchers) do |t|
      t.string :user
      t.string :controller
      t.string :action
      t.string :controller_action
      t.string :user_ip
      t.string :additional_info
      t.string :params
      t.timestamps  
    end      
  end

  def self.down
    drop_table :watchers
  end  
  
end