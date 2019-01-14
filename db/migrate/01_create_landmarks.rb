class CreateLandmarks < ActiveRecord::Migration
  # raise 'Write CreateLandmarks migration here'
   create_table :landmarks do |t|
    t.string :name
    t.belongs_to :figure
    t.integer :year_completed
  end
end
s
