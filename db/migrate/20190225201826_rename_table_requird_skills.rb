class RenameTableRequirdSkills < ActiveRecord::Migration[5.2]
  def change
    rename_table :requierd_skills, :required_skills
  end
end
