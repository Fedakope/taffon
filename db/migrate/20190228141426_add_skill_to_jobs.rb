class AddSkillToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :skill, foreign_key: true
  end
end
