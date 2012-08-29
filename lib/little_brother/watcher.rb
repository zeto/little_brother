module LittleBrother
  class Watcher < ActiveRecord::Base

  	 def params_as_hash
    	eval(params)
  	end
  	
  end  
end