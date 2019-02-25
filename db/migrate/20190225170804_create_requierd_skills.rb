class CreateRequierdSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :requierd_skills do |t|
      t.references :skill, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
