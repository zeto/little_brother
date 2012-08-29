module LittleBrother
  class Statistics

  	RECORD_LIMIT=10

  	# User Statistics
		def self.most_active_users limit=RECORD_LIMIT
			Watcher.count(:all, :conditions => ['user IS NOT NULL'], :group => 'user', :order => "count_all desc", :limit => limit)
  	end
  
  	def self.least_active_users limit=RECORD_LIMIT
			Watcher.count(:all, :conditions => ['user IS NOT NULL'], :group => 'user', :order => "count_all asc", :limit => limit)
  	end 

  	def self.most_active_users_this_month limit=RECORD_LIMIT
  		Watcher.count(:all, :conditions => ["user IS NOT NULL and created_at BETWEEN ? AND ?", Time.now.beginning_of_month, Time.now.end_of_month], :group => 'user', :order => "count_all desc", :limit => limit)
	  end
  
  	def self.least_active_users_this_month limit=RECORD_LIMIT
    	Watcher.count(:all, :conditions => ["user IS NOT NULL and created_at BETWEEN ? AND ?", Time.now.beginning_of_month, Time.now.end_of_month], :group => 'user', :order => "count_all asc", :limit => limit)
  	end    	

  	# Action Statistics
		def self.most_used_action limit=RECORD_LIMIT
    	Watcher.count(:all, :group => 'action', :order => "count_all desc", :limit => limit)
  	end
  
  	def self.least_used_action limit=RECORD_LIMIT
    	Watcher.count(:all, :group => 'action', :order => "count_all asc", :limit => limit)	
  	end 

  	# Controller Action Statistics
		def self.most_used_controller_action limit=RECORD_LIMIT
    	Watcher.count(:all, :group => 'controller_action', :order => "count_all desc", :limit => limit)
  	end
  
  	def self.least_used_controller_action limit=RECORD_LIMIT
    	Watcher.count(:all, :group => 'controller_action', :order => "count_all asc", :limit => limit)	
  	end

  end
end