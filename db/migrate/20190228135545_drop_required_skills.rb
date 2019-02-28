class DropRequiredSkills < ActiveRecord::Migration[5.2]
  def change
    drop_table :required_skills
  end
end
