class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name, null: false
      t.string :code
      t.boolean :active, default: true
      t.belongs_to :school #this creates a foreign key and associates the two models.. classrooms and school
      t.timestamps null: false
    end
  end
end
