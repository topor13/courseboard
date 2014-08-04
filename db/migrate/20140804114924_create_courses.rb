class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :content
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.string :discount

      t.timestamps
    end
  end
end
