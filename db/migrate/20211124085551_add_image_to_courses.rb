class AddImageToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :image, :text
  end
end