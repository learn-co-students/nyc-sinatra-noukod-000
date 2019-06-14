class CreateFigure_titles < ActiveRecord::Migration
  #raise 'Write CreateLandmarks migration here'
  def up 
    create_table :figure_titles do |t|
      t.integer :title_id 
      t.integer :figure_id
    end
  end
end
