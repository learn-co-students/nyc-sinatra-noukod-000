class FigureTitle < ActiveRecord::Base
  # add relationships here
  has_many :figures
  has_many :landmarks
end
