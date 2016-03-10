class RemoveBasLocationFromUserProfile < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :bas_location, :boolean
  end
end
