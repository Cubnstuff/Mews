class Tag < ActiveRecord::Base
    
    has_many :mew_tags
    has_many :mews, through: :mew_tags
end
