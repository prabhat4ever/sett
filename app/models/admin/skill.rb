class Admin::Skill < ActiveRecord::Base
	has_and_belongs_to_many :user_profiles
end
