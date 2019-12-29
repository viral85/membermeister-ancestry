class Student < ApplicationRecord
  has_ancestry cache_depth: true


  def grandchildren
    descendants(at_depth: 2)
  end
end
