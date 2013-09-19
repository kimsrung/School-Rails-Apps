class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.text :description
      t.references :course, index: true

      t.timestamps
    end
  end
end
