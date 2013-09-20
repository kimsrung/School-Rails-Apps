class CreateTutorsSkills < ActiveRecord::Migration
  def change
    create_table :tutors_skills do |t|
      t.references :tutor, index: true
      t.references :skill, index: true
    end
  end
end
