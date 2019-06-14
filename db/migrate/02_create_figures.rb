class CreateFigures < ActiveRecord::Migration
  #raise 'Write CreateLandmarks migration here'
  def up 
    create_table :figures do |t|
      t.string :name 
    end
  end
end
