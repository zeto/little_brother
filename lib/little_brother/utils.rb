module LittleBrother
  class Utils
    module ClassMethods

      def truncate_watchers
        ActiveRecord::Base.connection.execute("truncate table watchers") 
      end

      # TODO: Validate number_of_months
      def keep_only_last_months(number_of_months)
        Watcher.find(:all, :conditions => ['created_at < ?', Time.now-number_of_months.months])
      end
  
      def user_actions_in_timeframe(user, start_date, end_date)
        unless user.nil? || start_date.nil? || end_date.nil?
          where(:user => user, :created_at => start_date..end_date)
        end
      end
   
    end
  end
end