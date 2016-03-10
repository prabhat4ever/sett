class AddBaseLocationToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :base_location, :string
  end
end
