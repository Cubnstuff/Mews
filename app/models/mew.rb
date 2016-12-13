class Mew < ActiveRecord::Base
    belongs_to :user
    
    has_many :mew_tags
    has_many :tags, through: :mew_tags
    
  validates :message,  presence: true, length: {maximum: 140, 
too_long: "A tweet is only 140 max. Everybody knows that!"}
    


end
