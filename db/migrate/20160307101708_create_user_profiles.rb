class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.boolean :bas_location
      t.boolean :is_fte

      t.timestamps null: false
    end
  end
end
