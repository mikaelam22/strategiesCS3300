class Strategy < ApplicationRecord

    def valid?
        unless title.blank? or description.blank? or agent.blank? or map.blank? or side.blank? or not difficulty.integer?
            return true
        else 
            return false
        end
    end

    def save
        unless valid?
            return false
        else
            return true
        end
    end
    
end
