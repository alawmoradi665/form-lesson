class Listing < ApplicationRecord
  belongs_to :breed
#enum is to associate a number with a value 
  enum sex: {female: 0, male: 1}
end
