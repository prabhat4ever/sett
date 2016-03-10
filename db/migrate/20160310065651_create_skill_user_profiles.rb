class CreateSkillUserProfiles < ActiveRecord::Migration
    def change
    create_table :skill_user_profiles, :id=>false do |t|
      t.integer :user_profile_id
      t.integer :skill_id
end
      
  end
end
