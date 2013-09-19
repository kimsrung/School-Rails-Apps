class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :short_title
      t.text :summary

      t.timestamps
    end
  end
end
