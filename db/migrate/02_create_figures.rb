class CreateFigures < ActiveRecord::Migration
  def up 
    create_table :figures do |t|
      t.string :name 
    end
  end
end
