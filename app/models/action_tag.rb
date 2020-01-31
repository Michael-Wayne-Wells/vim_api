class ActionTag < ApplicationRecord
  has_and_belongs_to_many(:cheat_sheets)
end
