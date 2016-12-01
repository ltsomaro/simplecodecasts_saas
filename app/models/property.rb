class Property < ActiveRecord::Base
    belongs_to :user
    has_many :faqs
    has_one :compendium
    
    
end