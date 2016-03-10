class CreateAdminSkills < ActiveRecord::Migration
  def change
    create_table :admin_skills do |t|
      t.string :name
      t.string :desc

      t.timestamps null: false
    end
  end
end
