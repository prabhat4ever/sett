class UserProfile < ActiveRecord::Base

has_and_belongs_to_many :Skills
end
