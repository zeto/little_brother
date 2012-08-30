module LittleBrother
  module Record
    def self.included(base)
      base.send :before_filter, :record
    end

    def record
      unless request.nil?
        w_user = defined?(watch_user) ? watch_user : ""
        Watcher.create(:user_ip => request.remote_ip,
                       :user => w_user,
                       :params => params,
                       :controller => controller_name,
                       :action => action_name,
                       :controller_action => controller_name+":"+action_name)            
      end
    end
  end  
end